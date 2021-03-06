class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, :dependent => :destroy
  has_many :fantasy_contestants, :dependent => :destroy

  has_many :picked_contestants, :through => :fantasy_contestants, :source => :cast

  validates :username, :presence => true, :uniqueness => true
end
