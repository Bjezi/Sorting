class QuickSort
  attr_reader :arr

  def self.call(arr)
    new(arr).sort
  end

  def initialize(arr)
    @arr = arr
  end

  def sort(array = arr)
    return if array.empty?
    pivot = array.delete_at(rand(array.size))
    left, right = array.partition { |el| pivot > el }
    return *sort(left), pivot, *sort(right)
  end
end
