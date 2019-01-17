#!/usr/bin/env ruby

$LOAD_PATH << File.expand_path('../', __FILE__)

require 'commands/rotator_factory'
require 'commands/vertical_rotator'
require 'commands/horizontal_rotator'

require 'my_objects/point'
require 'my_objects/grid'

class App

  def initialize
    values = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
    ]
    @grid = MyObjects::Grid.new(values)
  end

  def run(data)
    rotate_commands = []

    code_list = data.chars
    code_list.each do |code|
      rotate_commands << Commands::RotatorFactory.create3x3(code)
    end

    rotate_commands.each { |c| c.run(@grid) }

    return @grid.result
  end
end
