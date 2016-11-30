require_relative './bubblesort'
require_relative './counting'
require_relative './mergesort'
require_relative './quicksort'
require_relative './selection'
require_relative './shellsort'

module Sorting
  def self.const_missing(name)
    Object.const_get(name)
  end
  #BubbleSort = ::BubbleSort
  #MergeSort = ::MergeSort
  #SelectionSort = ::SelectionSort
  #CountingSort = ::CountingSort
  #QuickSort = :: QuickSort
  #ShellSort = ::ShellSort
end
