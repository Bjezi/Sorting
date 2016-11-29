class BubbleSort
  attr_reader :arr

  def self.call(arr)
    new(arr).sort
  end

  def initialize(arr)
    @arr = arr
  end

  def sort
    size = arr.size

    size.times do |i|
      (i + 1).upto(size - 1) { |j| swap(i, j) if arr[i] > arr[j] }
    end
  arr
  end

  def swap(first, second)
    @arr[first], @arr[second] = arr[second], arr[first]
  end
end
