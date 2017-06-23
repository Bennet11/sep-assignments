require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    
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
  end
end
