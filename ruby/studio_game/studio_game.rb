current_time = Time.new.strftime("%A %m/%d/%Y at %I:%M%p")
puts "Welcome to the game! We're starting on #{current_time}: "

larry = 'larry'
larry_health = rand(61)
curly = 'curly'
curly_health = rand(126)
moe = 'moe'
moe_health = rand(101)
shemp = 'shemp'
shemp_health = rand(91)

puts "Players: \n\t#{larry}\n\t#{curly}\n\t#{moe}"

puts "#{larry} has a health of #{larry_health}."
puts "#{curly.upcase} has a health of #{curly_health}."
puts "#{moe.capitalize.center(13, '*')} has a health of #{moe_health}."
puts "#{shemp.capitalize.ljust(28, '*')} #{shemp_health} health"
