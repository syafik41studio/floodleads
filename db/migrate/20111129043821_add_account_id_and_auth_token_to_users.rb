class AddAccountIdAndAuthTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :account_id, :string
    add_column :users, :auth_token, :string
  end
end
