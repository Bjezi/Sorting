arr = [10,0,5,4,7,2,-1]

def qsort(arr, l = 0, r = arr.size - 1)
  return if l >= r

  start = l
  finish = r
  pivot = arr[l]
  p = start

  while start < finish

    if p == start

      if arr[finish] <= pivot

        arr[p] = arr[finish]
        start += 1
        p = finish

      else
        finish -= 1
      end

    elsif p == finish

      if arr[start] >= pivot

        arr[p] = arr[start]
        finish -= 1
        p = start

      else
        start += 1
      end

    end
  end

  arr[p] = pivot
  qsort(arr, l, p - 1)
  qsort(arr, p + 1, r)
end

qsort(arr)
puts arr
