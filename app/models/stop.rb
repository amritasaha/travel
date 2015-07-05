class Stop < ActiveRecord::Base
  attr_accessor :distance, :stars_count

  belongs_to :tour
  geocoded_by :latitude => :latitude, :longitude => :longitude


end