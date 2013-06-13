class AddColumnUser < ActiveRecord::Migration
 def change
    add_column :users, :phone, :string
    add_column :users, :address, :text
    add_column :products, :pic1, :string
    add_column :products, :pic2, :string
    add_column :products, :pic3, :string
    add_column :products, :pic4, :string
    add_column :products, :youtube, :string
    add_column :products, :startbid, :date
    add_column :products, :endbid, :date
    add_column :products, :status, :string
 
  end
end
