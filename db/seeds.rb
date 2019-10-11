# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

input_hikes= [
  {
    name: "Lake 22",
    trailhead_id: 1,
    length_miles: 5.4,
    elevation_gain_feet: 1350,
    max_elevation_feet: 2400,
    rating: 4
  },
  {
    name: "Granite Mountain",
    trailhead_id: 2,
    length_miles: 8.6,
    elevation_gain_feet: 3800,
    max_elevation_feet: 5629,
    rating: 5
  },
  {
    name: "Mount Teneriffe",
    trailhead_id: 3,
    length_miles: 13.8,
    elevation_gain_feet: 3800,
    max_elevation_feet: 4788,
    rating: 4
  },
  {
    name: "Teneriffe Falls",
    trailhead_id: 3,
    length_miles: 5.4,
    elevation_gain_feet: 1585,
    max_elevation_feet: 2370,
    rating: 4
  },
  {
    name: "Pratt Lake Basin",
    trailhead_id: 2,
    length_miles: 11,
    elevation_gain_feet: 2300,
    max_elevation_feet: 4100,
    rating: 4
  },
  {
    name: "Island & Rainbow Lakes",
    trailhead_id: 2,
    length_miles: 11.7,
    elevation_gain_feet: 3000,
    max_elevation_feet: 4400,
    rating: 3
  }
]

input_trailheads = [
  {
    name: "Lake 22 Trailhead",
    latitude: 48.0770, 
    longitude: -121.7457
  },
  {
    name: "Pratt Lake Trailhead",
    latitude: 47.3979, 
    longitude: -121.4866
  },
  {
    name: "Mt. Teneriffe Trailhead",
    latitude: 47.4861, 
    longitude: -121.7011
  }
]

trailhead_failures = []

input_trailheads.each do |input_trailhead|
  trailhead = Trailhead.new(input_trailhead)
  successful = trailhead.save
  if successful
    puts "Created trailhead: #{trailhead.inspect}"
  else
    trailhead_failures << author
    puts "Failed to save trailhead: #{trailhead.inspect}"
  end
end

puts "Added #{Trailhead.count} trailhead records"
puts "#{trailhead_failures.length} trailheads failed to save"

hike_failures = []
input_hikes.each do |input_hike|
  hike = Hike.new(input_hike)
  successful = hike.save
  if successful
    puts "Created hike: #{hike.inspect}"
  else
    hike_failures << author
    puts "Failed to save hike: #{hike.inspect}"
  end
end

puts "Added #{Hike.count} hike records"
puts "#{hike_failures.length} hikes failed to save"