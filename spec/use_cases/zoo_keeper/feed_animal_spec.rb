require './lib/core/animal/animal'
require './lib/core/animal/behaviours/carnivor_eat_behaviour'
require './lib/core/animal/behaviours/vegetarian_eat_behaviour'
require './lib/core/food/empty_food'
require './lib/core/food/food'
require './lib/use_cases/zoo_keeper/feed_animal'

describe UseCases::ZooKeeper::FeedAnimal do
  subject(:feed) { described_class.new }

  context 'when the animal to feed is carnivor' do
    let(:eat_behaviour) { Core::CarnivorEatBehaviour.new }
    let(:animal) { Core::Animal.new(eat_behaviour) }

    context 'when the keeper give meat' do
      let(:meat) { Core::Food.new(:meat, 80.0) }
      let(:empty_food) { Core::EmptyFood.new }

      it 'the meat is eaten by the animal' do
        expect(feed.call(animal, meat)).to eq(empty_food)
      end

      it 'the animal is fed well' do
        feed.call(animal, meat)
        expect(animal.fed?).to eq(true)
      end
    end

    context 'when the keeper give vegetable' do
      let(:vegetables) { Core::Food.new(:vegetable, 30.0) }
      let(:not_eaten_vegetables) { Core::Food.new(:vegetable, 27.0) }

      it 'the animal does not eat all the food' do
        expect(feed.call(animal, vegetables)).to eq(not_eaten_vegetables)
      end

      it 'the animal is not well fed' do
        feed.call(animal, vegetables)
        expect(animal.fed?).to eq(false)
      end
    end
  end

  context 'when the animal to feed is herbivor' do
    let(:eat_behaviour) { Core::VegetarianEatBehaviour.new }
    let(:animal) { Core::Animal.new(eat_behaviour) }

    context 'when the keeper give meat' do
      let(:meat) { Core::Food.new(:meat, 80.0) }

      it 'the animal does not eat' do
        expect(feed.call(animal, meat)).to eq(meat)
      end
    end

    context 'when the keeper give vegetable' do
      let(:vegetables) { Core::Food.new(:vegetable, 30.0) }
      let(:empty_food) { Core::EmptyFood.new }

      it 'the animal eats all the food' do
        expect(feed.call(animal, vegetables)).to eq(empty_food)
      end
    end
  end
end