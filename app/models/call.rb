class Call < ActiveRecord::Base

  belongs_to :user
  after_create :get_file_record_url
  
  def get_file_record_url
    client = Twilio::REST::Client.new self.user.account_id, self.user.auth_token
    account = client.accounts.get(self.user.account_id)
    account.calls.get(self.call_id).recordings.list.each do |r|
      update_attribute(:record_file_url, r.mp3)
    end 
  end
  
end
