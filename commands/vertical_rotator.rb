module Commands
  class VerticalRotator

    def initialize(x:, reverse: false)
      @reverse = reverse
      @target_x = x
    end

    def run(grid)
      unless grid.instance_of?(MyObjects::Grid)
        raise ArgumentError.new("Argument is not Grid class")
      end

      target_lines = grid.get_y_line(x: @target_x)
      target_lines.reverse! if @reverse

      tmp_value = target_lines[0].value
      target_lines.each_with_index do |point, index|
        if index < grid.y_limit
          point.value = target_lines[index + 1].value
        else
          point.value = tmp_value
        end
      end
    end

  end
end