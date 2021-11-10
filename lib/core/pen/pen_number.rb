module Core
  class PenNumber

    # @param [Integer] number
    def initialize(number)
      if number.class != Integer || number < 0
        raise ArgumentError.new('A pen number must by a positive integer') 
      end
      @number = number 
    end

  end
end
