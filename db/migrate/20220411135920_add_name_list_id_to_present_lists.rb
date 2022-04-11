class AddNameListIdToPresentLists < ActiveRecord::Migration[6.1]
  def change
    add_column :present_lists, :name_list_id, :integer
  end
end
