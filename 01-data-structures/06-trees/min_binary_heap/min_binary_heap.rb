require_relative 'node'

class MinBinaryHeap

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    current_node = root
    parent_node = insert_heap(current_node, node)
    while parent_node.ratings > node.rating
      node = swap(parent_node, node)
      parent_node = node.parent
    end
  end

  def insert_heap(current_node, new_node)
    if current_node.left == nil
      current_node.left = new_node
      new_node.parent = current_node
      return current_node
    elsif current_node.right == nil
      current_node.right = new_node
      new_node.parent = current_node
      return current_node
    else
      queue = []
      queue.push(current_node)
      while queue.size != 0
        node = queue.shift
        if node.left.left == nil || node.left.right == nil
          return insert_heap(node.left, new_node)
        elsif node.right.left == nil || node.right.right == nil
          return insert_heap(node.right, new_node)
        else
          queue.push(current_node.left)
          queue.push(current_node.right)
        end
      end
    end
  end


  def swap(parent_node, child_node)

    temp_l = child_node.left
    temp_r = child_node.right

    if parent_node.left == child_node
      child_node.left = parent_node

      if parent_node.right
        child_node.right = parent_node.right
        child_node.right.parent = child_node
      end
    else
      child_node.left = parent_node
      child_node.right = parent_node.left
      parent_node.left.parent = child_node
    end

    child_node.parent = parent_node.parent
    if child_node.parent.left == parent_node
      child_node.parent.left = child_node
    else
      child_node.parent.right = child_node
    end

    parent_node.parent = child_node
    parent_node.left = temp_l
    parent_node.right = temp_r
    return child_node
  end
  # Recursive Depth First Search
  def find(root, data)
    if root == nil || data == nil
      return nil
    else
      if root.title == data
        return root
      elsif root.left != nil
        return find(root.left, data)
      elsif root.right != nil
        return find(root.right, data)
      end
    end
  end

  def delete(root, data)
    if data == nil
      return nil
    end

    target_node = find(root, data)
    if target_node == nil
      return nil
    else
      node_parent = target_node.parent
      if node_parent.left == target_node
        target_node.left = nil
      elsif node_parent.right == target_node
        target_node.right = nil
      end
    end
  end

  # Recursive Breadth First Search
  def printf(children=nil)
    queue = [@root]
    while queue.length > 0
      new_root = queue.shift
      if new_root.left != nil
        queue.push(new_root.left)
      end
      if new_root.right != nil
        queue.push(new_root.right)
      end
      puts "#{new_root.title}: #{new_root.rating}"
    end
  end
end
