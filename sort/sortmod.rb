require_relative './bubblesort'
require_relative './counting'
require_relative './mergesort'
require_relative './quicksort'
require_relative './selection'
require_relative './shellsort'

module Sorting
  BubbleSort = ::BubbleSort
  MergeSort = ::MergeSort
  SelectionSort = ::SelectionSort
  CountingSort = ::CountingSort
  QuickSort = :: QuickSort
  ShellSort = ::ShellSort
end
