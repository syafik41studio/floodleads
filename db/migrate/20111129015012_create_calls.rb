class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :account_id
      t.string :call_id
      t.string :caller
      t.string :caller_city
      t.string :caller_state
      t.string :caller_country
      t.string :called
      t.string :call_duration
      t.string :api_version

      t.timestamps
    end
  end
end
