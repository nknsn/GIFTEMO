class CreatePresentLists < ActiveRecord::Migration[6.1]
  def change
    create_table :present_lists do |t|

      t.integer :user_id
      t.date :date
      t.string :product_name
      t.string :target
      t.string :scene

      t.timestamps
    end
  end
end
