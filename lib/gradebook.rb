class Gradebook
  attr_reader :name, :courses
  def initialize(name)
    @name = name
    @courses = []
  end

  def add_course(course)
    @courses << course
  end
end