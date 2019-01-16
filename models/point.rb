module Models
  class Point

    attr_accessor :value
    attr_reader :x
    attr_reader :y

    def initialize(x:, y:, value:)
      @x = x
      @y = y
      @value = value
    end
  end
end
