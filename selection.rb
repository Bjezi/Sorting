class Array

  def selection!
    len = self.size - 1

    for i in 0..len do

      min = i

        for j in (i+1)..len do

          if self[min] > self[j]
            min = j

          end
        end

        self[i], self[min] = self[min], self[i]
      end

    self
  end

end
