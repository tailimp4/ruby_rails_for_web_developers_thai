class Bid < ActiveRecord::Base

  attr_accessible :bidtimestamp, :price, :product_id, :winner, :status
  validates_numericality_of :price, :only_integer => true
  validates_length_of :price, :maximum => 6
  validates_presence_of :product_id, :price
  validates_uniqueness_of :user_id, :scope => :product_id, :message => "No permision"

  belongs_to :users
  belongs_to :products
end
