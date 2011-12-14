class AddAdminRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin_role, :boolean, :default => false
  end
end
