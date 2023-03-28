class RemoveColumnToRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :sport, :string
  end
end
