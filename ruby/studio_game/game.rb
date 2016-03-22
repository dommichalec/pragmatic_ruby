require_relative 'player'

# Game container class
class Game
  attr_reader :name
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
      2.times do
        player.blam!
        player.w00t!
      end
    end
    p @roster
  end
end
