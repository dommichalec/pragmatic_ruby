# Player class
class Player
  attr_accessor :name, :weapons
  attr_reader :health_score

  # constructor
  def initialize(name, health_score = 100)
    @name = name.capitalize
    @health_score = health_score
    @weapons = {}
  end

  def name=(new_name)
    @name = new_name.capitalize!
  end

  def total_score
    @health_score + @name.size
  end

  def strong?
    @health_score >= 150
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
    "#{@name} has a total score of #{total_score} as of today at" \
    " #{Time.new.strftime('%I:%M %p')} and"
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
