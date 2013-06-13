class Product < ActiveRecord::Base
 
  attr_accessible :base_price, :details, :name, :pic1, :pic2, :pic3, :pic4, :youtube, :startbid, :endbid,:status
  validates_numericality_of :base_price, :only_integer => true
  validates_length_of :base_price, :maximum => 6
  validates_presence_of :name, :base_price, :startbid, :endbid
  

  
  belongs_to :users
  belongs_to :categorys
  has_many :bids

end
