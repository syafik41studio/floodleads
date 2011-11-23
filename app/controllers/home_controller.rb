class HomeController < ApplicationController
  
  def call
    ##    @client = Twilio::REST::Client.new account_sid, auth_token
    #    @call = @client.account.calls.create(
    #      :from => '+14155992671',
    #      :to => '+12167016281',
    #      :url => 'http://myapp.com/call-handler'
    #    )

  end

  def call_handler
    respond_to do |format|
      format.xml
    end
  end
  
  def prepare_call
    @user_call= UserCall.new
  end

end
