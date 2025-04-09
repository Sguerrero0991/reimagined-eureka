require 'rspec'
require './lib/course'
require './lib/student'
require 'pry'

RSpec.describe Course do
  it 'is a course' do
    course = Course.new("Calculus", 2)    

    expect(course).to be_a(Course)
  end

  it 'has attributes' do
    course = Course.new("Calculus", 2)    

    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  it 'can enroll students' do
    course = Course.new("Calculus", 2)
    
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})    

    course.enroll(student1)    
    course.enroll(student2)    

    expect(course.students).to eq([student1, student2])
  end

end 