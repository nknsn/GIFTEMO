class RemoveFriendIdFromFriends < ActiveRecord::Migration[6.1]
  def change
    remove_column :friends, :friend_id, :integer
  end
end
