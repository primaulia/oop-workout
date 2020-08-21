require 'musician'

describe 'Musician' do
  let(:musician) { Musician.new }
  let(:guitarist) { Musician.new(instruments: ['guitar']) }

  it "Musican constructor (initialize method) should take 1 parameters" do
    initialize_parameters_count = Musician.allocate.method(:initialize).arity
    expect(initialize_parameters_count).to eq 1
  end

  it "should have an name" do
    expect(musician).to respond_to :name
    expect(musician.name).to be_a String
  end

  it "should have an genre" do
    expect(musician).to respond_to :genre
    expect(musician.genre).to be_a String
  end

  it "should have an gender" do
    expect(musician).to respond_to :gender
    expect(musician.gender).to be_a String
  end

  it "should have an age" do
    expect(musician).to respond_to :age
    expect(musician.age).to be_a Integer
  end

  it "should know how to play multiple instruments" do
    expect(musician).to respond_to :instruments
    expect(musician.instruments).to be_a Array
  end

  it "should be sober at the start of their career" do
    expect(musician).to respond_to :high?
    expect(musician.high?).to be_a Boolean
    expect(musician.high?).to eq false
  end

  it "should be alive at the start of their career" do
    expect(musician).to respond_to :alive?
    expect(musician.alive?).to be_a Boolean
    expect(musician.alive?).to eq true
  end

  it "should be able to play an instrument that s/he can play" do
    expect(guitarist).to respond_to :play
    expect(guitarist.play('guitar')).to be_a String
    expect(guitarist.play('guitar')).to eq "Playing the guitar"
  end

  it "should not try to play instrument she can't play" do
    expect(guitarist).to respond_to :play
    expect(guitarist.play('flue')).to be_a String
    expect(guitarist.play('flue')).to eq "I can't play a flute"
  end
end