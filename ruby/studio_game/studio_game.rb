class TypeError < StandardError; end

def current_time
  Time.new.strftime('%I:%M %p')
end

# Player class
class Player
  def initialize(name, health_score = 100)
    fail TypeError unless name.is_a? String
    fail TypeError unless health_score.is_a? Integer
    @name = name.capitalize
    @health_score = health_score
  end

  def blam!
    @health_score -= rand(11)
    puts "#{@name} was blammed! Health score has decreased to #{@health_score}."
  end

  def w00t!
    @health_score += rand(16)
    puts "#{@name} was w00ted! Health score has increased to #{@health_score}."
  end

  def to_s
    "#{@name} has a health of #{@health_score} as of today at" \
    " #{Time.new.strftime('%I:%M %p')}"
  end
end

larry = Player.new('larry', 60)
curly = Player.new('curly', 125)
moe = Player.new('moe')
shemp = Player.new('shemp', 90)
puts larry
puts curly
puts moe
puts shemp

curly.w00t!
