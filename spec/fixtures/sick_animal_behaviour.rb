require './lib/core/animal/behaviours/big_animal_health_behaviour'

module Fixtures
  class SickAnimalBehaviour < Core::Animal::Behaviours::BigAnimalHealthBehaviour
    def initialize()
      super
      @health = 40
    end
  end
end