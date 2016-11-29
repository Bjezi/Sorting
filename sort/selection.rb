class SelectionSort
  attr_reader :arr

  def self.call(arr)
    new(arr).sort
  end

  def initialize(arr)
    @arr = arr
  end

  def sort
    len = arr.size - 1

    0.upto(len) do |i|
      min = i
      (i+1).upto(len) { |j| min = j if arr[min] > arr[j] }
      swap(i, min)
    end
    arr
  end

  def swap(first, second)
    @arr[first], @arr[second] = arr[second], arr[first]
  end
end
