require 'game'

describe Game do
  let(:player1){ player = double :player
                allow(player).to receive(:attacked)
                player}


  let(:player2){player = double :player
                allow(player).to receive(:attacked)
                player}


  subject {described_class.new(player1,player2)}

    context 'when initialize' do
      it ' accept and retrieve one player ' do
        expect(subject.player1).to eq player1
      end

      it ' accept and retrieve another player ' do
        expect(subject.player2).to eq player2
      end

    end

  describe '#attack' do
    it "lead to the player be attacked" do

      expect(player1).to receive(:attacked)
      subject.attack(player1)
    end
  end
end
