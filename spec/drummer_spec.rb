require 'drummer'

describe 'Drummer' do
  let(:drummer) {
    Drummer.new(
      name: 'Yung Drum',
      genre: 'Rock',
      gender: 'male',
      age: 25,
      instruments: ['drum']
    ) 
  }

  describe "inheritance" do
    it "should extend all methods from musicians class" do
      expect(Drummer.instance_methods.sort).to include(
        :name, :genre, :gender, 
        :age, :instruments, :alive?, 
        :high?, :play
      )
    end
  end

  describe "#take_drugs!" do
    it "too much rock and roll, overdosed when young" do
      expect(drummer).to respond_to :take_drugs!
      drummer.take_drugs!
      expect(drummer.alive?).to eq false
    end
  end

  describe "#play" do
    it "can only play drum" do
      expect(drummer).to respond_to :play
      expect(drummer.play('drum')).to be_a String
      expect(drummer.play('drum')).to eq "🤘-ing the drum"
      expect(drummer.play('sing')).to eq "I can't sing 😅"
    end
  end
end