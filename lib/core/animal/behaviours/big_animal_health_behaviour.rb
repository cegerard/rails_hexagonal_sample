require './lib/core/animal/behaviours/abstract_health_behaviour'

module Core
  module Animal
    module Behaviours
      class BigAnimalHealthBehaviour < AbstractHealthBehaviour

        def fed(quantity)
          @fed += quantity
          @fed = 100 if @fed > 100
        end

        def add_health(quantity)
          @health += quantity
          @health = 100 if @health > 100
        end

        def hungry?
          @fed <= 70
        end

        def sick?
          @health < 50
        end

      end
    end
  end
end