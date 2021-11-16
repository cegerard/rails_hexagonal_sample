APP_CONTAINER = Dry::Container.new

repositories = Dry::Container::Namespace.new(:repositories) do
  register(:animals, memoize: true) { Animal::InMemoryRepository.new }
end

APP_CONTAINER.import(repositories)