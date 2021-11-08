module Core
  class Animal

    # @param [Core::AbstractEatBehaviour] eat_behaviour
    # @param [Integer] fed
    def initialize(eat_behaviour, fed = 0)
      @eat_behaviour = eat_behaviour
      @fed = fed
    end

    # @param [Core::Food] food
    # @return [Core::Food] the remaining food
    def eat(food)
      remaining_food = @eat_behaviour.eat(food)
      @fed += food.weight - remaining_food.weight
      remaining_food
    end

    def fed?
      @fed > 70
    end

  end
end
