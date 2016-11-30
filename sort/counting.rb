class CountingSort
  attr_reader :arr

  def self.call(arr)
    new(arr).sort
  end

  def initialize(arr)
    @arr = arr
  end

  def sort
    index = Array.new(arr.size, 0)

    arr.each { |x| index[x] += 1 }
    (0...index.size).flat_map { |i| [i] * index[i] }
  end
end
