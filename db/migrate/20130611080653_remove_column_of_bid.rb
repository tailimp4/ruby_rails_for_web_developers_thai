class RemoveColumnOfBid < ActiveRecord::Migration
  def change  
  	remove_column :bids,:bidtimestamp

  end
end
