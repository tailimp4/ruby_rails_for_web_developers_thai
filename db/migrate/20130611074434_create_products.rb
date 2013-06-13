class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :user
      t.integer :base_price
      t.references :category
      t.string :details

      t.timestamps
    end
    add_index :products, :user_id
    add_index :products, :category_id
  end
end
