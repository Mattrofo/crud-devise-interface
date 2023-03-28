class RemoveColumnUserIdToRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :users_id, :index
  end
end
