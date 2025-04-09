require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'
require 'pry'

RSpec.describe Gradebook do
  it 'is a gradebook' do
    gradebook = Gradebook.new("Megan")

    expect(gradebook).to be_a(Gradebook)
  end

  it 'has attributes' do
    gradebook = Gradebook.new("Megan")

    expect(gradebook.name).to eq("Megan")
    expect(gradebook.courses).to eq([])
  end

  it 'can add a course' do
    gradebook = Gradebook.new("Megan")
    course1 = Course.new("Calculus", 2)
    course2 = Course.new("Physics", 4)

    gradebook.add_course(course1)
    gradebook.add_course(course2)

    expect(gradebook.courses).to eq([course1, course2])
  end

  it 'can return a list of all students' do
    gradebook = Gradebook.new("Megan")
    course1 = Course.new("Calculus", 2)
    course2 = Course.new("Physics", 4)

    gradebook.add_course(course1)
    gradebook.add_course(course2)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    student3 = Student.new({name: "Stephanie", age: 33})
    student4 = Student.new({name: "Michael", age: 31})

    course1.enroll(student1)    
    course1.enroll(student2)   
    course2.enroll(student3)   
    course2.enroll(student4)   

    expect(gradebook.lis_all_students).to eq({
      course1 => [student1, student2], 
      course2 => [student3, student4]
    })
  end

end 