
require 'spec_helper'

require './lib/core/animal'
require './lib/core/pen'
require './lib/core/pen_number'
require './lib/core/pen_repository'
require './lib/use_cases/zoo_keeper/place_animal_in_pen'

describe UseCases::ZooKeeper::PlaceAnimalInPen do
  subject(:place_in_pen) { described_class.new(pen_repository) }
  
  let(:animal) { Core::Animal.new }
  let(:pen_repository) { instance_double(Core::PenRepository) }

  before do
    allow(pen_repository).to receive(:get).and_return(pen)
  end

  context 'when destination pen has empty places' do
    let(:pen_number) { Core::PenNumber.new(1) }
    let(:pen) { Core::Pen.new(pen_number, 1) }

    it 'returns true' do
      expect(place_in_pen.call(animal, pen_number)).to eq(true)
    end
  end

  context 'when destination pen is full' do
    let(:pen_number) { Core::PenNumber.new(1) }
    let(:pen) { Core::Pen.new(pen_number) }

    it 'returns false' do
      expect(place_in_pen.call(animal, pen_number)).to eq(false)
    end
  end
end