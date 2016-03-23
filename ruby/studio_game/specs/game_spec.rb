require_relative 'game'

describe Game do
  before do
    @game = Game.new("Today's Game")
  end
  it 'should have an empty roster upon initialization' do
    expect(@game.roster.empty?).to eq(true)
  end
end
