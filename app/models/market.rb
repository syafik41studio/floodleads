class Market < ActiveRecord::Base

  has_many :partners
  has_many :users, :through => :partners

end
