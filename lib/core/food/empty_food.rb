require './lib/core/food/food'

module Core
  module Food
    class EmptyFood < Food

      def initialize
        super(nil, 0)
      end

      def ==(other)
        other.is_a?(EmptyFood)
      end
    end
  end
end