#!/usr/bin/env ruby

$LOAD_PATH << File.expand_path('../', __FILE__)

require 'command_factories/rotator3x3_factory'
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

    @rotator_factory = CommandFactories::Rotator3x3Factory.new
  end

  def run(data)
    command_seq = []

    code_list = data.chars
    code_list.each do |code|
      command_seq << @rotator_factory.get_command(code)
    end

    command_seq.each { |c| c.run(@grid) }
    return @grid.result
  end
end
