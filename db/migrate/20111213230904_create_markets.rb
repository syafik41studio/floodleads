class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :city
      t.string :state
      t.integer :max_partner
      t.string :area_code
      t.float :setup_fee

      t.timestamps
    end
  end
end
