class RenameColumnOfBid < ActiveRecord::Migration

  def change
  	rename_column :bids, :selectbid, :winner
  end
end
