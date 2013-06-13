class RenameColumnUser < ActiveRecord::Migration
   def change
  	rename_column :users, :fristname, :firstname
  end
end
