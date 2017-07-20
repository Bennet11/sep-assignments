require_relative 'node'
require_relative 'film'

class KevinBacon

  def find_kevin_bacon(start_node)
    films = []
    while films.size <= 6 
      start_node.film_actor_hash.each do |film| # iterate through each film
          if film.cast == "Kevin Bacon"
            films.push(film)
            return films
          else
            for i in 0..film_actor_hash.size do
              find_kevin_bacon(start_node.film_actor_hash[film][i])
            end
          end
        return films
      end
    end
  end
end
