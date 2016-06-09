class FantasyContestant < ActiveRecord::Base
  belongs_to :user
  belongs_to :cast

  validates :user, :presence => true
  validates :cast, :presence => true, :uniqueness => { :scope => :user }
end
