module MyObjects
  class Grid

    attr_reader :x_limit
    attr_reader :y_limit

    def initialize(values)
      @y_limit = values.size - 1
      @x_limit = values[0].size - 1  # x_limitはvaluesの先頭行の個数で固定

      @points = []
      0.upto(@y_limit) do |y|
        0.upto(@x_limit) do |x|
          @points << Point.new(x: x, y: y, value: values[y][x])
        end
      end
    end

    def get_x_line(y:)
      @points.select  {|p| p.y == y }
             .sort_by {|p| p.x }
    end

    def get_y_line(x:)
      @points.select  {|p| p.x == x }
             .sort_by {|p| p.y }
    end

    def result
      result_string = ''

      0.upto(@y_limit) do |index|
        result_string << "#{get_x_line(y: index).map{|p| p.value}.join}/"
      end
      result_string.chomp("/")
    end

  end
end
