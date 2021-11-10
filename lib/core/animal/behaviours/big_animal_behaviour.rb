
module Core
  module Animal
    module Behaviours
      class BigAnimalBehaviour < AbstractHealthBehaviour

        def fed(quantity)
          @fed += quantity
          @fed = 100 if @fed > 100
        end

        def hungry?
          @fed <= 70
        end


      end
    end
  end
end