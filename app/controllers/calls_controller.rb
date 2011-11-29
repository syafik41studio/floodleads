class CallsController < ApplicationController

  before_filter :authenticate_user!, :except => :call_handler

  def index
    @calls = current_user.calls
    @client = Twilio::REST::Client.new current_user.account_id, current_user.auth_token
    @account = @client.accounts.get(current_user.account_id)
  end

  def call_handler
    user = User.where("account_id = ?", params["AccountSid"]).first
    if params[:CallStatus].eql?("completed") && user
      call = Call.create(
        :account_id => params["AccountSid"],
        :call_id => params["CallSid"],
        :caller => params["Caller"],
        :caller_city => params["CallerCity"],
        :caller_country => params["CallerCountry"],
        :caller_state => params["CallerState"],
        :called  => params["Called"],
        :call_duration => params["CallDuration"],
        :api_version => params["ApiVersion"],
        :user_id => user.blank? ? nil : user.id
      )
    end
    respond_to do |format|
      format.xml
    end
  end

  
end
