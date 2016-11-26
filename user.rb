load 'bubblesort.rb'
load 'mergesort.rb'
load 'selection.rb'
load 'counting.rb'

class UserOutput

  attr_accessor :arr

  class << self

    def greeting
      puts "Hello user, make your choice!"
      puts "~1 - bubble sort\n~2 - merge sort"
      puts "~3 - selection sort\n~4 - counting sort"
      puts "~5 - quicksort\n~6 - shell sort "
      choice()
    end

    def getarr
      puts "Enter size of array: "
      len = gets.strip.to_i
      @@arr = Array.new(len) { rand(0..1000) }
    end

    def choice()
      ch = gets.strip.to_i
      getarr
      system('clear')
      choose(ch)
    end

    def choose(ch)

      case ch
        when 1 then bubble
        when 2 then merge_sort
        when 3 then selection
        when 4 then counting
        when 5 then quicksort
        when 6 then shell
      end

    end

    def method_missing(method_name)
      puts "You choose #{method_name} sort!"
      puts "Unsort array: #{@@arr}"
      method_name = method_name.to_s + '!'
      puts "Sort array: #{@@arr.send("#{method_name}")} "
    end


  end
end

UserOutput::greeting
