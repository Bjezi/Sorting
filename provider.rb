require_relative 'sort/sortmod.rb'

class Provider
  attr_accessor :unsortarr, :choice, :sortarr

  def initialize(options)
    @unsortarr = Array.new(options[:dimension]) { rand(0..10) }
    @choice = options[:choice]
  end

  def choose
    @sortarr = ::Sorting.const_get("#{choice.capitalize}Sort").call(unsortarr)
  end
end
