class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user, index: true, foreign_key: true
      t.string :item_name

      t.timestamps null: false
    end
  end
end
