class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.integer :user_id
      t.integer :market_id
      t.string :status
      t.datetime :active_at

      t.timestamps
    end
  end
end
