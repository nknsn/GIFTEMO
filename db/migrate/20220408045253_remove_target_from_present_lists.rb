class RemoveTargetFromPresentLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :present_lists, :target, :string
  end
end
