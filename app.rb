#!/usr/bin/env ruby

$LOAD_PATH << File.expand_path('../', __FILE__)

require 'models/point'
require 'models/point_collection'
require 'models/grid'

class App

  def initialize
    values = [ 
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
    ]

    @grid = Models::Grid.new(values)
  end

  def run(data)
    data
  end
end
