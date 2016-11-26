class Array

  def counting(arr)
    index = Array.new(arr.size, 0)

    arr.each { |x| index[x] += 1 }
    result = []
    (0...index.size).each { |i| result << [i]*index[i]  }

    result
  end

end
