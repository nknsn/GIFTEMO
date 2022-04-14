class RenameProductNameColumnToPresentLists < ActiveRecord::Migration[6.1]
  def change
    rename_column :present_lists, :product_name, :item
  end
end
