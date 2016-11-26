def shell(arr)
  k = arr.size - 1
  del = k / 2

  while del >= 1 do

    k.downto(0) do |i|

      0.upto(i - del) do |j|

        if arr[j] > arr[j+del]

          arr[j], arr[j+del] = arr[j+del], arr[j]

        end

      end
    end
    del = del / 2
  end
end

arr = [10, 0, -2, 1, 5, 3, 2]

shell(arr)

puts arr


