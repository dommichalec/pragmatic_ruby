class TypeError < StandardError; end

# Player class
class Player
  attr_accessor :name
  attr_reader :health_score

  # constructor
  def initialize(name, health_score = 100)
    fail TypeError unless name.is_a? String
    fail TypeError unless health_score.is_a? Integer
    @name = name.capitalize
    @health_score = health_score
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def total_score
    @health_score + @name.size
  end

  # mutates the health_score down by a random number between 1 and 10
  def blam!
    @health_score -= rand(11)
    puts "#{@name} was blammed! Health score has decreased to #{@health_score}."
  end

  # mutates the health_score up by a random number between 1 and 15
  def w00t!
    @health_score += rand(16)
    puts "#{@name} was w00ted! Health score has increased to #{@health_score}."
  end

  # practice with the Time class
  def to_s
    "#{@name} has a total score of #{total_score} as of today at" \
    " #{Time.new.strftime('%I:%M %p')} and"
  end
end

# execute if this file is explicitly ran
if __FILE__ == $PROGRAM_NAME
  player = Player.new('moe')
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
