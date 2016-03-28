require_relative 'player'
require_relative 'treasure_trove'

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

  it "computes a score as the sum of its health and points" do
  @player.found_treasure(Treasure.new(:hammer, 50))
  @player.found_treasure(Treasure.new(:hammer, 50))

  expect(@player.score).to eq(200)
  end

  it 'computes points as the sum of all treasure points' do
    expect(@player.points).to eq(0)
    @player.found_treasure(Treasure.new(:hammer, 50))
    expect(@player.points).to eq(50)
    @player.found_treasure(Treasure.new(:crowbar, 400))
    expect(@player.points).to eq(450)
    @player.found_treasure(Treasure.new(:hammer, 50))
    expect(@player.points).to eq(500)
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

  context 'in a collection of players' do
    before do
      @player1 = Player.new('moe', 100)
      @player2 = Player.new('larry', 200)
      @player3 = Player.new('curly', 300)

      @players = [@player1, @player2, @player3]
    end

    it 'is sorted by decreasing score' do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end
end
