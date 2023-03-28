class RemoveColumnUserIdsToRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :user_id, :integer
  end
end
