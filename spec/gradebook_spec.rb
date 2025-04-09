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
end 