require_relative 'node'

class MinBinaryHeap

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    current_node = root
    parent_node = insert_heap(current_node, node)
    while parent_node > node.rating
      node = swap(parent_node, node)
      parent_node = node.parent
    end
  end

  def insert_heap(current_node, new_node)
    if current_node.left == nil
      current_node.left = new_node
      return current_node
    elsif current_node.right == nil
      current_node.right = new_node
      return current_node
    else
      queue = []
      queue.push(current_node)
      while queue.size != 0
        queue.shift
        if node.left.left == nil || node.left.right == nil
          insert(current_node, node.left)
        elsif node.right.left == nil || node.right.right == nil
          insert(current_node, node.right)
        else
          queue.push(current_node.left)
          queue.push(current_node.right)
        end
      end
    end
  end

  def swap(parent_node, new_node)

    temp_l = new_node.left
    temp_r = new_node.right

    if temp_l == new_node
      temp_l = parent_node
    elsif temp_r == new_node
      temp_l = temp_r
      parent_node = temp_l
    end
  end
  # Recursive Depth First Search
  def find(root, data)
    if root == nil || data == nil
      return nil
    else
      if root.title == data
        return root
      elsif root.left != nil
        find(root.left, data)
      elsif root.right != nil
        find(root.right, data)
      end
    end
  end

  def delete(root, data)
    target_node = find(root, data)
    if target_node == nil
      return nil
    else
      target_node.title = nil
      target_node.rating = nil
    end

  end

  # Recursive Breadth First Search
  def printf(children=nil)
    queue = [@root]
    result = []
    while queue.length > 0
      new_root = queue.shift
      if new_root.left != nil
        queue.push(new_root.left)
      end
      if new_root.right != nil
        queue.push(new_root.right)
      end
      result.push("#{new_root.title}: #{new_root.rating}")
    end
    result.each do |r|
      puts r
    end
  end
end
