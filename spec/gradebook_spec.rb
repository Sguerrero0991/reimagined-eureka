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
end 