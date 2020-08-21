require 'musician'

describe 'Musician' do
  let(:musician) { Musician.new }

  it "Musican constructor (initialize method) should take 3 parameters" do
    initialize_parameters_count = Musician.allocate.method(:initialize).arity
    expect(initialize_parameters_count).to eq 3
  end

  it "should have an name" do
    expect(musician).to respond_to :name
    expect(musician.name).to be_a String
  end

  it "should have an genre" do
    expect(musician).to respond_to :genre
    expect(musician.genre).to be_a String
  end

  it "should have an age" do
    expect(musician).to respond_to :age
    expect(musician.age).to be_a Integer
  end

  it "should know how to play multiple instruments" do
    expect(musician).to respond_to :instruments
    expect(musician.instruments).to be_a Array
  end
end