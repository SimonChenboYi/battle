require 'player'

describe Player do
  describe '#name' do
    subject(:name1) {Player.new('name1')}
    it {expect(subject.name).to eq 'name1'}
  end

end
