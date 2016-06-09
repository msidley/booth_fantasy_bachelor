class Cast < ActiveRecord::Base
  has_many :actions, :dependent => :destroy
  has_many :fantasy_contestants, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true

end
