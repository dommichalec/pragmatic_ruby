def current_time
  Time.new.strftime('%I:%M %p')
end

def say_hello(name, health_score = 100)
  "I'm #{name.capitalize} with a health of #{health_score} as of " \
  "#{current_time}."
end

puts say_hello('larry', 60)
puts say_hello('curly', 125)
puts say_hello('moe')
puts say_hello('shemp', 90)
