class User < ActiveRecord::Base
  geocoded_by :latitude => :latitude, :longitude => :longitude
  before_save { |user| user.email = user.email.downcase }

  has_many :tours
  has_many :stars

end