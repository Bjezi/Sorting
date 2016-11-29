class MergeSort
  attr_reader :arr

  def self.call(arr)
    new(arr).sort
  end

  def initialize(arr)
    @arr = arr
  end

  def sort(array = arr)
    size = array.size
    return array if size <= 1
    middle = size / 2
    left = sort(array[0, middle])
    right = sort(array[middle, size])
    result = []

    until left.empty? || right.empty?
      result << (left.first > right.first ? right.shift : left.shift)
    end

    result + left + right
  end
end
