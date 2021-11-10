module Core
  module Food
    class Food

      attr_reader :weight

      # @param [Symbole] type the type of food (meat or vegetable)
      # @param [Float] weight the quantity of food in kilograms
      def initialize(type, weight)
        @type = type
        @weight = weight
      end

      def meat?
        @type == :meat
      end

      def vegetables?
        @type == :vegetable
      end

      def eat_all
        Core::Food::EmptyFood.new
      end

      # @param [Integer] weight the quantity of food in kilograms
      # @return [Core::Food::Food] the not eaten food
      def eat(weight)
        Core::Food::Food.new(@type, @weight - weight)
      end

      def ==(other)
        other.is_a?(Core::Food::Food) && other.type == @type && other.weight == @weight
      end

      protected

      attr_reader :type

    end
  end
end
