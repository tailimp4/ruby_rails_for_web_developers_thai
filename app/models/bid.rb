class Bid < ActiveRecord::Base

  #attr_accessible :bidtimestamp, :price, :product_id, :winner, :status
  attr_accessible :bidtimestamp, :price, :winner, :status
  validates_numericality_of :price, :only_integer => true
  validates_length_of :price, :maximum => 6
  validates_presence_of :product_id, :price
  validates_uniqueness_of :user_id, :scope => [:product_id] 
  validates_uniqueness_of :product_id, :scope => [:winner], unless: Proc.new { |b| b.winner == false }

  belongs_to :users
  belongs_to :products
end
