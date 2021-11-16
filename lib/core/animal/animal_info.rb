module Core
  module Animal
    class AnimalInfo

      attr_reader :id, :name, :race, :kind, :gender, :weigth, :age

      # @param [Hash] attributes
      def initialize(attributes)
          @id = attributes[:id]
          @name = attributes[:name]
          @race = attributes[:race]
          @kind = attributes[:kind]
          @gender = attributes[:gender]
          @weigth = attributes[:weigth]
          @age = attributes[:age]
      end
    
    end
  end
end
  