require 'game'

describe Game do
  let(:player){ player = double :player
                allow(player).to receive(:attacked)
                player}


  describe '#attack' do
    it "lead to the player be attacked" do

      expect(player).to receive(:attacked)
      subject.attack(player)
    end
  end
end
