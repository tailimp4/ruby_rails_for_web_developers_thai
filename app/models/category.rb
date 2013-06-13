class Category < ActiveRecord::Base
  attr_accessible :detail, :name
  validates :name, :length => { :maximum => 100 }
  validates_presence_of :name


  has_many :products
end
