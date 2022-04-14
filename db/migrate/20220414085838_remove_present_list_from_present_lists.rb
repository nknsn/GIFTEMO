class RemovePresentListFromPresentLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :present_lists, :name_list_id, :integer
  end
end
