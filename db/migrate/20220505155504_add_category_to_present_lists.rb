class AddCategoryToPresentLists < ActiveRecord::Migration[6.1]
  def change
    add_column :present_lists, :category, :integer
  end
end
