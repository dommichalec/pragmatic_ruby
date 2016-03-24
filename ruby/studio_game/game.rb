require_relative 'player'
require_relative 'die'

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

  def remove(player)
    @roster.delete(player)
  end

  def play
    @roster.each do |player|
      die = Die.new
      case die.roll
      when 1..2 then player.blam!
      when 3..4 then puts "#{player.name} was skipped."
      else player.w00t!
      end
    end
  end
end
