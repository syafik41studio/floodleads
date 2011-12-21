class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  attr_writer :current_step
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :account_id, :auth_token,
    :first_name, :last_name, :position_in_company, :company_address, :city, :state, :postal_code, :country,
    :phone_number, :fax_number, :card_id, :card_number, :expiration_date, :cvv, :card_postal_code

  validates :account_id, :auth_token,:card_id, :card_number, :expiration_date, :cvv,
            :presence => true,:if => lambda { |o| o.current_step == "billing" }
  validates :first_name,:last_name, :presence => true,:if => lambda { |o| o.current_step != "billing" }
  validates_numericality_of :card_number,:if => lambda { |o| o.current_step == "billing" }
  
  has_many :calls
  has_many :partners
  has_many :markets, :through => :partners

  accepts_nested_attributes_for :partners, :reject_if => :all_blank, :allow_destroy => true

  def full_name
    first_name+" "+last_name
  end

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[signup information]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end

end
