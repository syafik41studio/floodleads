class AddRecordFileUrlToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :record_file_url, :string
  end
end
