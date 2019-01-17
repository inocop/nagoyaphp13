module Commands
  class HorizontalRotator

    def initialize(y:, reverse: false)
      @reverse = reverse
      @target_y = y
    end

    def run(grid)
      unless grid.instance_of?(MyObjects::Grid)
        raise ArgumentError.new("Argument is not Grid class")
      end

      target_lines = grid.get_x_line(y: @target_y)
      target_lines.reverse! if @reverse

      tmp_value = target_lines[0].value
      target_lines.each_with_index do |point, index|
        if index < grid.x_limit
          point.value = target_lines[index + 1].value
        else
          point.value = tmp_value
        end
      end
    end

  end
end