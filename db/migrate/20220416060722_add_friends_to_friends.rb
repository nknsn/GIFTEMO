class AddFriendsToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :friend_id, :integer
  end
end
