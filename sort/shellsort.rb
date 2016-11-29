class ShellSort
  attr_reader :arr

  def self.call(arr)
    new(arr).sort
  end

  def initialize(arr)
    @arr = arr
  end

  def sort
    size = arr.size - 1
    delta = size / 2

    while delta >= 1 do
      size.downto(0) do |i|
        0.upto(i - delta) { |j| swap(j, j + delta) if arr[j] > arr[j+delta] }
      end
      delta = delta / 2
    end
    arr
  end

  def swap(first, second)
    @arr[first], @arr[second] = arr[second], arr[first]
  end
end
