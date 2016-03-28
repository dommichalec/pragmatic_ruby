# Player class
class Player
  attr_accessor :name, :weapons
  attr_reader :health_score

  # constructor
  def initialize(name, health_score = 100)
    @name = name.capitalize
    @health_score = health_score
    @found_treasure = Hash.new(0) # 0 is set to the default value
  end

  def name=(new_name)
    @name = new_name.capitalize!
  end

  def found(treasure)
    @found_treasure[treasure.name] += treasure.points
    puts "\n#{@name} found a #{treasure.name} worth #{treasure.points}."
    puts "#{@found_treasure}"
  end

  def points
    @found_treasure.values.reduce(0, :+)
  end

  def total_score
    @health_score + points
  end

  def strong?
    @health_score >= 100
  end

  # mutates the health_score down by a random number between 1 and 10
  def blam!
    @health_score -= 10
    puts "#{@name} was blammed! Health score has decreased to #{@health_score}."
  end

  # mutates the health_score up by a random number between 1 and 15
  def w00t!
    @health_score += 15
    puts "#{@name} was w00ted! Health score has increased to #{@health_score}."
  end

  # practice with the Time class
  def to_s
    "#{@name} with a score of #{@health_score}"
  end

  def take_turn(rounds)
    1.upto(rounds) do |round|
      3.times do
        sleep 1
        print '...'
      end
      puts "\nRound #{round}"
      @roster.each do |player|
        GameTurn.take_turn(player)
      end
    end

    treasure = TreasureTrove.random
    player.found(treasure)
  end
end

# execute if this file is explicitly ran
if __FILE__ == $PROGRAM_NAME
  player = Player.new('moe')
  puts player.name
  puts player.health_score
  player.w00t!
  puts player.health_score
  player.blam!
  puts player.health_score
end
