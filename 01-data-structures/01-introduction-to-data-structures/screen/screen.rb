require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    @matrix = [[width],[height]]
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    if inbounds(x, y)
      @matrix[x][y] = pixel
    end
  end

  def at(x, y)
    if inbounds(x, y)
      return @matrix[x][y]
    else
      nil
    end
  end

  private

  def inbounds(x, y)
    inside = true;
    if x < 0 || x > @width
      inside = false
    end
    if y < 0 || y > @height
      inside = false
    end
    return inside
  end
end
