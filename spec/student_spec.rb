require 'rspec'
require './lib/student'

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
end 