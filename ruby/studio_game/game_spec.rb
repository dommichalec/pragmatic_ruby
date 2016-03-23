require_relative 'game'

describe Game do
  before do
    @game = Game.new("Today's Game")
    @initial_health = 100
    @player = Player.new('larry', @initial_health)

    @game.add(@player)
  end

  context 'when a high number is rolled' do
    it 'w00ts a player if a high number (5-6) is rolled' do
      allow_any_instance_of(Die).to receive(:roll).and_return(5)
      @game.play

      expect(@player.health_score).to eq(@initial_health + 15)
    end
  end

  context 'when a medium number is rolled' do
    it 'skips a player if a medium number (3-4) is rolled' do
      allow_any_instance_of(Die).to receive(:roll).and_return(3)
      @game.play

      expect(@player.health_score).to eq(@initial_health)
    end
  end

  context 'when a low number is rolled' do
    it 'blams a player if a low number (1-2) is rolled' do
      allow_any_instance_of(Die).to receive(:roll).and_return(1)
      @game.play

      expect(@player.health_score).to eq(@initial_health - 10)
    end
  end
end
