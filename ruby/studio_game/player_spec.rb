require_relative 'player'

describe Player do
  before do
    @player = Player.new('larry', 150)
  end

  it 'should have a capitalized name' do
    expect(@player.name).to eq('Larry')
  end

  it 'should have a positive integer for a health score' do
    expect(@player.health_score).to eq(150)
  end

  it 'should increase health score by 15 when w00ted' do
    @player.w00t!
    expect(@player.health_score).to eq(165)
  end

  it 'should decrease health score by 10 when blammed' do
    @player.blam!
    expect(@player.health_score).to eq(140)
  end

  it 'should have a total score of health score plus name size' do
    expect(@player.total_score).to eq(155)
  end

  context do
    before do
      @player = Player.new('larry')
    end

    it 'should have a default health score of 100' do
      expect(@player.health_score).to eq(100)
    end
  end

  context 'with a health score greater than 100' do
    before do
      @player = Player.new('larry', 101)
    end

    it 'should return true for a strong player' do
      expect(@player.strong?).to eq(true)
    end
  end

  context 'with a health score less than 100' do
    before do
      @player = Player.new('larry', 99)
    end

    it 'should return false for a wimpy player' do
      expect(@player.strong?).to eq(false)
    end
  end
end
