require_relative 'city'

sacramento = City.new("Sacramento", 0)
chicago = City.new("Chicago", 2044)
cleveland = City.new("Cleveland", 2374)
san_francisco = City.new("San Francisco", 87)
boston = City.new("Boston", 3012)
city_list = [sacramento, chicago, cleveland, san_francisco, boston]


def nearest_city(graph_of_cities, current_city)
  current_city = city_list[0]
  while current_city.visited.false?
    neighbor_cities = current_city.neighbors
    next_city = neighbor_cities[0]

    for current_neighbor in neighbor_cities
      if current_neighbor.distance < next_city.distance
        current_neighbor = next_city
      end
    end
    current_city.visited = true
    next_city = current_city
  end
end
