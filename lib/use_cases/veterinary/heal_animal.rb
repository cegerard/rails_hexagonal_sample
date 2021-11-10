module UseCases
  module Veterinary
    class HealAnimal

      MAXIMUM_HEALTH_PER_DAY = 20

      # @param [Core::Animal::Animal] animal
      def call(animal)
        animal.restore_health(MAXIMUM_HEALTH_PER_DAY)
      end

    end
  end
end