HIKES = [
  {id: 1,	name: 'Lake 22',	length_miles: 5.4,	elevation_gain_feet: 1350,	max_elevation_feet: 2400,	rating: 4, best_month: "July"},
  {id: 2,	name: "Annette Lake",	length_miles: 7.5,	elevation_gain_feet: 1800,	max_elevation_feet: 3600,	rating: 3, best_month: "May"}
]

class HikesController < ApplicationController
  def index
    #@hikes = HIKES
    @hikes = Hike.all
  end
end
