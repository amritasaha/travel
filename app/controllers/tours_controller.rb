class ToursController < ApplicationController
  require 'will_paginate/array'

  def index
    @tours = Tour
    @tours = Tour.search(params[:q]) if params[:q].present?
    @tours = sort_by_distance_and_star(params, (@tours.map(&:id) rescue nil)) if params[:lat].present? && params[:long].present?
    @tours = @tours.paginate(:page => params[:page], :per_page => 10)
  end


  private

  def sort_by_distance_and_star(params, searched_tours_ids)
    stops = Stop.all
    stops.each do |stop|
      stop.distance = stop.distance_from([params[:lat], params[:long]])
      stop.stars_count = (-stop.tour.stars.count) rescue 0
    end
    stops = stops.sort_by { |stop| [stop.distance, stop.stars_count] }
    tours = stops.collect { |stop| stop.tour }.uniq
    tours = tours.collect { |tour| tour if searched_tours_ids.include?(tour.id) } if !searched_tours_ids.nil?
    return tours.compact
  end


end



