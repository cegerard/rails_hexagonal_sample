module Core
  class Pen
    
    # @param [Core::PenNumber] pen_number
    def initialize(pen_number, size = 0)
      @pen_number = pen_number
      @animals = []
      @size = size
    end

    def add_animal(animal)
      nb_animals_before = animal_count
      @animals.push(animal) if empty_space?
      animal_count == nb_animals_before + 1
    end

    private

    def empty_space?
      animal_count < @size
    end

    def animal_count
      @animals.length
    end

  end
end
