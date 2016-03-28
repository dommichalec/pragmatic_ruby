require_relative 'game'

larry = Player.new('larry')
curly = Player.new('curly')
moe = Player.new('moe')
# uncomment shemp and add to the game at will
# shemp = Player.new('shemp')

game = Game.new('Knuckleheads')
game.add(larry)
game.add(curly)
game.add(moe)

print 'How many rounds would you like to play today? (3, 5 or 7):  '
answer = nil
loop do
  answer = gets.chomp.to_i
  break if [3, 5, 7].include?(answer)
  print 'Please choose either 1, 2, or 3:  '
end

game.play(rounds)
game.print_stats
