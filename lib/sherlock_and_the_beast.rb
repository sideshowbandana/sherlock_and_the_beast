require "sherlock_and_the_beast/version"

module SherlockAndTheBeast
  class Solver

    def initialize(digits)
      @digits = digits
    end

    def decent_number
      return "-1" if @digits < 3 || @digits == 4 || @digits == 7
      number = ""
      while (@digits -= 3) >= 0
        number += "555"
      end
      if @digits == -2
        number[0..-10] + "3333333333"
      elsif @digits == -1
        number[0..-4] + "33333"
      else
        number
      end
    end
  end
  def solve
    gets.chomp.to_i.times do
      puts run(gets.chomp.to_i)
    end
  end
  module_function :solve

  def run(length)
    Solver.new(length).decent_number
  end
  module_function :run
end
