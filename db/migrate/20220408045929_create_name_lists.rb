class CreateNameLists < ActiveRecord::Migration[6.1]
  def change
    create_table :name_lists do |t|

      t.integer :user_id
      t.integer :present_list_id

      t.timestamps
    end
  end
end
