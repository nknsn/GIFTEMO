class AddBirthdateToPresentLists < ActiveRecord::Migration[6.1]
  def change
    add_column :present_lists, :birthdate, :date
  end
end
