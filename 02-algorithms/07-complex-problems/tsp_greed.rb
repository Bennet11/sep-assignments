require_relative 'city'

def nearest_city(graph_of_cities, current_city)
  while !current_city.visited
    next_city = current_city.neighbors[0]
    distance_to_next_city = next_city[1]

    current_city.neighbors.each do |current_neighbor|
      current_neighbor_city = current_neighbor[0]
      distance_to_current_neighbor = current_neighbor[1]

      if distance_to_current_neighbor < distance_to_next_city && !current_neighbor_city.visited
        next_city = current_neighbor
      end
    end

    current_city.visited = true
    if !next_city[0].visited
      current_city = graph_of_cities[next_city[0].name]
    end
  end
  current_city
end

# the_city = nearest_city(city_list, current_city)
# puts the_city
