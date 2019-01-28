module CommandFactories
  class Rotator3x3Factory

    attr_reader :commands

    def initialize
      @commands = {}
    end

    def get_command(code)
      unless @commands.keys.include?(code)
        commands[code] = create(code)
      end

      return commands[code]
    end

    private def create(code)
      case code
      when 'a'
        Commands::HorizontalRotator.new(y: 0)
      when 'b'
        Commands::HorizontalRotator.new(y: 1)
      when 'c'
        Commands::HorizontalRotator.new(y: 2)
      when 'd'
        Commands::VerticalRotator.new(x: 0, reverse: true)
      when 'e'
        Commands::VerticalRotator.new(x: 1, reverse: true)
      when 'f'
        Commands::VerticalRotator.new(x: 2, reverse: true)
      when 'g'
        Commands::HorizontalRotator.new(y: 2, reverse: true)
      when 'h'
        Commands::HorizontalRotator.new(y: 1, reverse: true)
      when 'i'
        Commands::HorizontalRotator.new(y: 0, reverse: true)
      when 'j'
        Commands::VerticalRotator.new(x: 2)
      when 'k'
        Commands::VerticalRotator.new(x: 1)
      when 'l'
        Commands::VerticalRotator.new(x: 0)
      else
        raise ArgumentError.new("Argument must [a-l]")
      end
    end

  end
end