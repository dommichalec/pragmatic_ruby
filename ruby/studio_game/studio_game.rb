require_relative 'game'

larry = Player.new('larry', 60)
curly = Player.new('curly', 125)
moe = Player.new('moe')
# uncomment shemp and add to the game at will
# shemp = Player.new('shemp', 90)

game = Game.new('Knuckleheads')
game.add(larry)
game.add(curly)
game.add(moe)

game.play
