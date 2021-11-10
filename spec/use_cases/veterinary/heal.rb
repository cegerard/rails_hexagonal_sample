require './lib/core/animal/animal'
require './lib/use_cases/veterinary/heal'

describe UseCases::Veterinary::Heal do
  subject(:heal) { described_class.new }

  context 'when an animal is sick' do
    let(:animal) { Core::Animal::Animal.new(nil) }

    it 'the vet heal it' do
      heal.call(animal)
      expect(animal.sick?).to be(false)
    end
  end
end