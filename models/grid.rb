module Models
  class Grid

    def initialize(values)

      @collection = PointCollection.new

      0.upto(values.size - 1) do |y|
        0.upto(values[y].size - 1) do |x|
          @collection.add(Point.new(x: x, y: y, value: values[y][x]))
        end
      end
    end

    def top_rotate(x:)
    end

    def bottom_rotate(x:)
    end
  
    def left_rotate(y:)
    end

    def right_rotate(y:)
    end


    # def rotate(line_code)
    #   @collection.get_line(line_code)
    # end

    def result
    end

  end
end
