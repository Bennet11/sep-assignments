require_relative 'node'
require_relative 'film'

def find_kevin_bacon(start)
  queue = [] # make an empty queue to hold the nodes we're searching
  found = false # set a flag for if we've found Kevin
  queue.push(start) # push the initial node into the queu
  while queue.size != 0 # keep searching so long as the queue isn't empty
    node = queue.shift # get the first node out of the queue
    node.film_actor_hash.each do |movie, actor_nodes| # iterate over each item in the film actor hash
      if !start.path_array.include?(movie) # the path_array represents what movies we've seen so far
        start.path_array.push(movie) # if we haven't seen the movie already, put it in the path array of the initial node
      end
      actor_nodes.each do |act_node| # for each actor in the current movie, we need to see if they're kevin/connect to kevin
        if act_node.actor != "Kevin Bacon" && act_node.visited == false # see if they're not kevin and if we haven't alreadychecked this actor
          queue.push(node) # if we haven't checked the actor already, put their node into the queue
          act_node.visited = true # mark the actor node as visited
        end
        if act_node.actor == "Kevin Bacon" # we found kevin!
          found = true
          return start.path_array # return the array of all the movies we've seen so far
        end
      end
    end
  end
  return []
end
