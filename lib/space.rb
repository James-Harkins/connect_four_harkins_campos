require 'pry'

class Space

  attr_reader :filled,
              :output

  def initialize
    @filled = false
    @output = "."
  end

end
