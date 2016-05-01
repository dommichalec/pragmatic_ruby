module My_Enumerable

  def my_select
    new_array = []
    each do |value|
      new_array << value if yield(value)
    end
    new_array
  end

  def my_reject
    new_array = []
    each do |value|
      new_array << value unless yield(value)
    end
    new_array
  end

  def my_map
    new_array = []
    each do |value|
      new_array << yield(value)
    end
    new_array
  end
end

class Genre
  include My_Enumerable

  def initialize
    @types = %w(Sci-Fi Comedy Action Adventure RomCom)
  end

  def each
    @types.each { |type| yield(type) }
  end
end

container = Genre.new

comedies = container.my_select { |g| g.include?("Com")}
lets = container.my_reject { |g| g.size == 6 }
downcased = container.my_map { |m| m.downcase }

p comedies
p lets
p downcased
