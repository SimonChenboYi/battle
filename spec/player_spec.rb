require 'player'

describe Player do
let(:name2) {Player.new('name2')}


  describe '#name' do

    it {expect(name2.name).to eq 'name2'}
  end

  describe '#hp' do

    it "return player's hit-points" do
      expect(name2.hp).to eq 60
    end
  end

  describe '#attacked' do
    it "reduce player's hit-points by 10" do
      expect { name2.attacked }.to change { name2.hp }.by(-10)
    end
  end

end
