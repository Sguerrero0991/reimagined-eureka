require 'rspec'
require './lib/student'
require 'pry'

RSpec.describe Student do
  it 'is a student' do
    student = Student.new({name: "Morgan", age: 21}) 
    expect(student).to be_a(Student)
  end

  it 'has attributes' do
    student = Student.new({name: "Morgan", age: 21}) 

    expect(student.name).to eq("Morgan")
    expect(student.age).to eq(21)
    expect(student.scores).to eq([])
  end

  it 'can log scores' do
    student = Student.new({name: "Morgan", age: 21}) 

    student.log_score(89)
    student.log_score(78)  

    expect(student.scores).to eq([89, 78])
  end

  it 'can average all of the scores' do
    student = Student.new({name: "Morgan", age: 21}) 

    student.log_score(89)
    student.log_score(78)  

    expect(student.grade).to eq(83.5)
  end
end 