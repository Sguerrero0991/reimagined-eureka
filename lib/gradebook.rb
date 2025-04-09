class Gradebook
  attr_reader :name, :courses
  def initialize(name)
    @name = name
    @courses = []
  end
end