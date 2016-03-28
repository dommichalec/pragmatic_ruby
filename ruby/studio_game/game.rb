require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

# Game container class
class Game
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = []
  end

  def add(player)
    @roster << player
    puts "#{player} was added to the roster!"
  end

  def print_stats
    strong_players, wimpy_players = @roster.partition(&:strong?)
    puts "\nGame Stats: "
    strong_players.each { |player| puts "#{player.name} is strong!" }
    wimpy_players.each { |player| puts "#{player.name} is wimpy!" }
    sorted_players = @roster.sort { |a, b| b.health_score <=> a.health_score }
    puts "\nHigh Scores (from strongest to wimpiest):"
    sorted_players.each { |player| puts "#{player.name}... #{player.health_score}" }
  end

  def play(rounds)
    treasures = TreasureTrove::TREASURES
    puts "\nThis game features #{treasures.size} weapons to be discovered!"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points}"
    end
    1.upto(rounds) do |round|
      3.times do
        sleep 1
        print '...'
        sleep 1
      end
      puts "\nRound #{round}"
      @roster.each do |player|
        GameTurn.take_turn(player)
      end
    end
  end
end
