require 'elasticsearch/model'

class Tour < ActiveRecord::Base
  attr_accessor :current_user_star_id
  belongs_to :user
  has_many :stars
  has_many :stops

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks


end

Tour.import