module Core
  class AbstractEatBehaviour

    # @param [Core::Food] food
    # @return [Core::Food] the remaining food
    def eat(food)
      raise NotImplementedError
    end

  end
end
