class Array

  def merge_sort!

    n = self.size
    return self if n <= 1
    middle = n / 2
    left = self[0, middle].merge_sort!
    right = self[middle, n].merge_sort!

    result = []

    until left.empty? || right.empty?
      result << (left.first > right.first ? right.shift : left.shift)
    end

    result.concat(left).concat(right)

  end

end
