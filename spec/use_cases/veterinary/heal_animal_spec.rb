require 'spec_helper'

require './lib/core/animal/animal'
require './lib/core/animal/behaviours/big_animal_health_behaviour'
require './lib/use_cases/veterinary/heal_animal'

require './spec/fixtures/sick_animal_behaviour'

describe UseCases::Veterinary::HealAnimal do
  subject(:heal) { described_class.new }

  context 'when an animal is sick' do
    let(:health_behaviour) { Fixtures::SickAnimalBehaviour.new }
    let(:animal) { Core::Animal::Animal.new(nil, health_behaviour) }

    it 'heal it' do
      heal.call(animal)
      expect(animal.sick?).to equal(false)
    end
  end

  context 'when the animal is not sick' do
    let(:health_behaviour) { Core::Animal::Behaviours::BigAnimalHealthBehaviour.new }
    let(:animal) { Core::Animal::Animal.new(nil, health_behaviour) }

    it 'does nothing' do
      heal.call(animal)
      expect(animal.sick?).to equal(false)
    end
  end
end