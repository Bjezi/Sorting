require 'pry'
require_relative './provider'

class Printer
  class << self

    def greeting
      puts "Hello user, make your choice!"
      puts "~\'bubble\' - for bubble sort\n~\'merge\' - for merge sort"
      puts "~\'selection\' - for selection sort\n~\'counting\' - for counting sort"
      puts "~\'quick\' - for quicksort\n~\'shell\' - for shell sort "
      choice
    end

    def choice
      ch = gets.strip.downcase
      getlen(ch)
    end

    def getlen(ch)
      puts 'Enter size of array: '
      len = gets.strip.to_i
      storage_data(ch, len)
    end

    def storage_data(ch, len)
      options = { choice: ch, dimension: len }
      output(options)
    end

    def output(options)
      system('clear')
      work_array = Provider.new(options)
      puts "You choose #{options[:choice]} sort"
      puts "Unsort array: #{work_array.unsortarr}"
      work_array.choose
      puts "Sort array: #{work_array.sortarr}"
    end
  end
end
