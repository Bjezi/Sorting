require 'pry'
require_relative './provider'

class Printer
  class << self

    def greeting
      puts 'Input method what you need'
      %w(bubble merge selection counting quick shell ).each do |sort_method|
        puts "~ \'#{sort_method}\' for #{sort_method} sort"
      end
      choice
    end

    def choice
      ch = gets.strip.downcase
      getlen(ch)
    end

    def getlen(ch)
      puts 'Enter size of array: '
      len = gets.strip.to_i
      options = {choice: ch, dimension: len}
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
