class Gradebook
  attr_reader :name, :courses
  def initialize(name)
    @name = name
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def lis_all_students
    hash = {}
    courses.each do |course|
      hash[course] = course.students
    end
    p hash
  end

  
end