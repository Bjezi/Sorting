class Array

  def bubble!

    n = self.size

    n.times do |i|

      (i+1).upto(n - 1) do |j|

         self[i], self[j] = self[j], self[i] if self[i] > self[j]

      end
    end
    self
  end
end
