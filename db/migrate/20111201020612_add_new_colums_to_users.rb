class AddNewColumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :position_in_company, :string
    add_column :users, :company_name, :string
    add_column :users, :company_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postal_code, :string
    add_column :users, :country, :string
    add_column :users, :phone_number, :string
    add_column :users, :fax_number, :string
  end
end
