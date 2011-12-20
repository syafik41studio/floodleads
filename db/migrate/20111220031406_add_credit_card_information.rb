class AddCreditCardInformation < ActiveRecord::Migration
  def up
    add_column :users, :card_id, :string, :limit => 64
    add_column :users, :card_number, :string, :limit => 64
    add_column :users, :expiration_date, :datetime
    add_column :users, :cvv, :string
    add_column :users, :card_postal_code, :string
  end

  def down
    remove_column(:users, :card_id, :card_number, :expiration_date, :cvv, :card_postal_code)
  end
end
