require_relative 'game'

game = Game.new('Knuckleheads')
game.load_players(ARGV.shift || 'players.csv')

print 'How many rounds would you like to play today? (3, 5 or 7):  '
answer = nil
loop do
  answer = gets.chomp.to_i
  break if [3, 5, 7].include?(answer)
  print "You chose #{answer}. Please choose either 3, 5, or 7:  "
end

game.play(answer)
game.print_stats
