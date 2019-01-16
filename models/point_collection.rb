module Models
  class PointCollection

    def initialize
      @points = []
    end

    def add(point)
      unless point.is_a?(Point)
        raise 'Pointクラス以外は追加できません。'
      end

      @points << point
    end

    def get_x_line(x:)
      @points.select {|p| p.x = x }
    end

    def get_y_line(y:)
      @points.select {|p| p.y = y }
    end
  end
end