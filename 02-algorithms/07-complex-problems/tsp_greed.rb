require_relative 'city'

home = City.new("Sacramento", 0)
los_angeles = City.new("Los Angeles", 386)
chicago = City.new("Chicago", 2044)
cleveland = City.new("Cleveland", 2374)
seattle = City.new("Seattle", 752)
san_francisco = City.new("San Francisco", 87)
boston = City.new("Boston", 3012)
city_list = [los_angeles, chicago, cleveland, seattle, san_francisco, boston]


def nearest_city(graph_of_cities, current_city)
  while graph_of_cities != nil
    next_city = graph_of_cities[0]
    graph_of_cities.each do |city|
      if city.distance < next_city.distance
        next_city = city
      end
    end
    current_city = next_city
    graph_of_cities.delete(next_city)
  end
  # while !current_city.visited
  #   neighbor_cities = current_city.neighbors
  #   next_city = neighbor_cities[0]
  #
  #   for current_neighbor in neighbor_cities
  #     if current_neighbor.distance < next_city.distance
  #       current_neighbor = next_city
  #     end
  #   end
  #   current_city.visited = true
  #   next_city = current_city
  # end
end

the_city = nearest_city(city_list, home)
puts the_city
