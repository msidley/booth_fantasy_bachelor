class Action < ActiveRecord::Base
  belongs_to :cast

  validates :cast, :presence => true
  validates :play, :presence => true
  validates :point_value, :presence => true
  validates :week, :presence => true

end
