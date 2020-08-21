require 'musician'

describe 'Musician' do
  let(:musician) { Musician.new(
      name: 'Yung Rok',
      genre: 'Rock',
      gender: 'male',
      age: 25
    ) 
  }
  let(:guitarist) { Musician.new(instruments: ['guitar']) }
  let(:old_musician) { Musician.new(
      instruments: ['guitar'],
      age: 40
    ) 
  }

  it "Musican constructor (initialize method) should take 1 parameters" do
    initialize_parameters_count = Musician.allocate.method(:initialize).arity
    expect(initialize_parameters_count).to eq -1
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

  it "should know to sing if cannot play any instruments" do
    expect(musician).to respond_to :instruments
    expect(musician.instruments).to be_a Array
    expect(musician.instruments).to eq ['sing']
  end

  it "should be sober at the start of their career" do
    expect(musician).to respond_to :high?
    expect(musician.high?).to be_a FalseClass
    expect(musician.high?).to eq false
  end

  it "should be alive at the start of their career" do
    expect(musician).to respond_to :alive?
    expect(musician.alive?).to be_a TrueClass
    expect(musician.alive?).to eq true
  end

  it "should be able to play an instrument that s/he can play" do
    expect(guitarist).to respond_to :play
    expect(guitarist.play('guitar')).to be_a String
    expect(guitarist.play('guitar')).to eq "Playing the guitar"
    expect(guitarist.play('sing')).to eq "Singing Rock and Roll 🤘"
  end

  it "should not try to play instrument s/he can't play" do
    expect(guitarist).to respond_to :play
    expect(guitarist.play('flute')).to be_a String
    expect(guitarist.play('flute')).to eq "I can't play a flute"
  end

  it "should be able to take drugs and get high" do
    expect(musician).to respond_to :take_drugs!
    musician.take_drugs!
    expect(musician.high?).to eq true
  end

  it "should overdose if take drugs when s/he is older than 27 years old" do
    expect(old_musician).to respond_to :take_drugs!
    old_musician.take_drugs!
    expect(old_musician.alive?).to eq false
  end
end

