class CreateRecommendGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :recommend_gifts do |t|

      t.string :genre_id
      t.string :product_name
      t.integer :price

      t.timestamps
    end
  end
end
