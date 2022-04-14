class AddNameToPresentLists < ActiveRecord::Migration[6.1]
  def change
    add_column :present_lists, :name, :string
  end
end
