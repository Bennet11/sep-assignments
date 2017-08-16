require_relative 'city'

def nearest_city(graph_of_cities, current_city)
  while !current_city.visited
    neighbor_cities = current_city.neighbors
    next_city = neighbor_cities[0]

    neighbor_cities.each do |current_neighbor|
      if current_neighbor[1] < next_city[1] && !current_neighbor[0].visited
        next_city = current_neighbor
      end
    end

    current_city.visited = true
    if !next_city[0].visited
      current_city = graph_of_cities[next_city[0]]
    end
  end
  current_city
end

# the_city = nearest_city(city_list, current_city)
# puts the_city
