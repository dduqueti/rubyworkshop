# EXAMPLE 5 - Accepting Arguments
greeter_p = proc do |name|
  puts "Hello, #{name}"
end
greeter_l = lambda do |name|
  puts "Hello, #{name}"
end

p "Calling proc!"
greeter_p.call("Ylva", "Brighid")
p "Calling lambda!"
greeter_l.call("Kashti", "Aodhan")

# EXAMPLE 6 - Return statement
def context
  l = lambda do
    puts "In lambda"
    return
    puts "After return"
  end

  p = proc do
    puts "In proc"
    return
    puts "After return"
  end

  l.call
  p.call

  puts "End of method"
end

context


	# Returns:
	# "Calling proc!"
	# Hello, Ylva
	# "Calling lambda!"
	# screencast_differences.rb:6:in `block in <main>': wrong number of arguments (2 for 1) (ArgumentError)
	# 	from screencast_differences.rb:12:in `call'
	# 	from screencast_differences.rb:12:in `<main>'

