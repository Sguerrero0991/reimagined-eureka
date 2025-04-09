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

  def students_below(threshold)
    students_list =[]
    courses.each do |course|
      course.students.each do |student|
        students_list << student if student.grade <= threshold
      end
    end
    p students_list
  end
end