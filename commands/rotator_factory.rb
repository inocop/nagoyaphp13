module Commands
  class RotatorFactory

    def self.create3x3(code)
      case code
      when 'a'
        HorizontalRotator.new(y: 0)
      when 'b'
        HorizontalRotator.new(y: 1)
      when 'c'
        HorizontalRotator.new(y: 2)
      when 'd'
        VerticalRotator.new(x: 0, reverse: true)
      when 'e'
        VerticalRotator.new(x: 1, reverse: true)
      when 'f'
        VerticalRotator.new(x: 2, reverse: true)
      when 'g'
        HorizontalRotator.new(y: 2, reverse: true)
      when 'h'
        HorizontalRotator.new(y: 1, reverse: true)
      when 'i'
        HorizontalRotator.new(y: 0, reverse: true)
      when 'j'
        VerticalRotator.new(x: 2)
      when 'k'
        VerticalRotator.new(x: 1)
      when 'l'
        VerticalRotator.new(x: 0)
      else
        raise ArgumentError.new("Argument must [a-l]")
      end
    end

  end
end