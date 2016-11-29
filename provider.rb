require_relative 'sort/sortmod.rb'

class Provider
  attr_accessor :unsortarr, :choice, :sortarr

  def initialize(options)
    @unsortarr = Array.new(options[:dimension]) { rand(0..10) }
    @choice = options[:choice]
  end

  def choose
    @sortarr = case choice
        when 'bubble' then ::Sorting::BubbleSort.call(unsortarr)
        when 'merge' then ::Sorting::MergeSort.call(unsortarr)
        when 'selection' then ::Sorting::SelectionSort.call(unsortarr)
        when 'counting' then ::Sorting::CountingSort.call(unsortarr)
        when 'quick' then ::Sorting::QuickSort.call(unsortarr)
        when 'shell' then ::Sorting::ShellSort.call(unsortarr)
        end
  end
end
