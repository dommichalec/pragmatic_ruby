require_relative 'calculator'

# Orechstration Engine
class Engine
  attr_reader(:user)

  def initialize
    @user = User.new
  end

  def play
    user.greet
    user.goodbye
  end
end
