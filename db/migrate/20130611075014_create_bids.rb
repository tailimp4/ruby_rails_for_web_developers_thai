class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :user
      t.references :product
      t.integer :price
      t.timestamp :bidtimestamp
      t.string :status
      t.boolean :selectbid

      t.timestamps
    end
    add_index :bids, :user_id
    add_index :bids, :product_id
  end
end
