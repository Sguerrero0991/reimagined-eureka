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

end 