class Puppy
  attr_accessor :name, :breed, :age

  def initialize(name:, breed:, months_old:)
    self.name = name
    self.breed = breed
    self.age = months_old
  end

end
