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

  it 'should increase health score by 5 when w00ted' do
    @player.w00t!
    expect(@player.health_score).to eq(155)
  end

  it 'should decrease health score by 10 when blammed' do
    @player.blam!
    expect(@player.health_score).to eq(140)
  end

  it 'should have a total score of health score plus name size' do
    expect(@player.total_score).to eq(155)
  end

  it 'should be able to change player name on the fly' do
    expect(@player.name ='lawrence').to eq('Lawrence')
  end

  context do
    before do
      @player = Player.new('larry')
    end

    it 'should have a default health score of 100' do
      expect(@player.health_score).to eq(100)
    end
  end
end
