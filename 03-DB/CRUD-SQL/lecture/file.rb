class Doctor
    attr_reader :id
  
    def initialize(attributes = {})
      # TODO: store other attributes as instanced variable (exercise)
    end


  end

doctor = Doctor.new(name: 'John', age: 42)
doctor.id # => nil

doctor.save # create in db; et je recupère l'id pour la mettre dans ma variable d'isntance

doctor.age += 1

doctor.save