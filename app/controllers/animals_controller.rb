class AnimalsController < ApiController
  before_action :load_dependencies

  def create
    # TODO: validate params

    created_animal = @animals_repository.create(params)
    render json: created_animal
  end

  def load_dependencies
    @animals_repository = APP_CONTAINER.resolve('repositories.animals')
  end
end