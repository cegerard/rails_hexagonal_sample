module Core
  module Animal
    module Behaviours
      class AbstractHealthBehaviour

        def initialize()
          @fed = 50
          @health = 100
        end

        # @param [Integer] quantity
        def fed(quantity)
          raise NotImplementedError
        end

        # @param [Integer] quantity
        def add_health(quantity)
          raise NotImplementedError
        end

        def fed?
          raise NotImplementedError
        end

        def sick?
          raise NotImplementedError
        end

      end
    end
  end
end
