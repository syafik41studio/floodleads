class Partner < ActiveRecord::Base

  belongs_to :user
  belongs_to :market
  
end
