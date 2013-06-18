class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :firstname, :lastname, :user_login, :user_password,:phone , :address
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  #validates :firstname,:lastname, :length => { :maximum => 150 }
  validates :user_login,:email, :uniqueness => true
  #validates_length_of :user_password, :in => 1..12
  #validates_length_of :user_login, :in => 1..20
  #validates_presence_of :email, :firstname, :lastname, :user_login ,:user_password
  validates_uniqueness_of :email,:user_login


  has_many :products
  has_many :bids
  has_many :owner_productbid, :through => :products, :source => :bids
  #has_one :owner_productcate,:through => :product, :source => :category
  #has_many :owner_bidproduct ,:through :bid,:source :product



end
