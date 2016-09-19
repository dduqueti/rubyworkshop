# EXAMPLE 7 Blocks preview
def each_country(country)
  country.call("Colombia")
  country.call("Costa Rica")
  country.call("USA")
end

steam_greeter = Proc.new do |name|
  puts "Hello, You're in #{name} steam store!"
end

lord_gaben = Proc.new do |name|
  puts "Hey #{name}, take some discounts & give me your wallet!"
end

each_country(steam_greeter)


	# Returns
	# Hey Colombia, take a cookie
	# Hey Costa Rica, take a cookie
	# Hey USA, take a cookie


each_country(lord_gaben)


	# Returns
	# Hello, Colombia
	# Hello, Costa Rica
	# Hello, USA



# EXAMPLE 8 Using Blocks


def each_country
  yield("Colombia")
  yield("Costa Rica")
  yield("USA")
end

each_country { |name |puts "Hello, You're in #{name} steam store!" }


	# Returns
	# Hello, Colombia
	# Hello, Costa Rica
	# Hello, USA


each_country { |name |puts "Hello, You're in #{name} steam store!" }

# Example 9 Using Blocks block_given?

def each_country
	puts "Welcome!"
	if block_given?
	  yield("Colombia")
	  yield("Costa Rica")
	  yield("USA")
	end
end

p "Calling without block"
each_country

p "Calling with block"
each_country { |name |puts "Hello, You're in #{name} steam store!" }



	# "Calling without block"
	# Welcome!
	# "Calling with block"
	# Welcome!
	# Hello, You're in Colombia steam store!
	# Hello, You're in Costa Rica steam store!
	# Hello, You're in USA steam store!




# EXAMPLE 10 - Creating on our each

class Array
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i+=1
    end
    self
  end
end

array = ['Colombia','Costa Rica', 'USA'].my_each do
	|arg1| puts "#{arg1} Rocks!"
end
puts array.inspect


# EXAMPLE 11 - Turning Block into Proc

def each_country(&block)
	puts block.inspect
  block.call("Colombia")
  block.call("Costa Rica")
  block.call("USA")
end

each_country { |name |puts "Hello, You're in #{name} steam store!" }

# EXAMPLE 12 - Turning Proc into Proc

def each_country
  yield("Colombia")
  yield("Costa Rica")
  yield("USA")
end

greeter = Proc.new { |name |puts "Hello, You're in #{name} steam store!" }

each_country(&greeter)

# EXAMPLE 13 - Turning Block into Proc without &

def each_country(block)
	puts block.inspect
  block.call("Colombia")
  block.call("Costa Rica")
  block.call("USA")
end

each_country { |name |puts "Hello, You're in #{name} steam store!" }

# screencast_blocks.rb:130:in `each_country': wrong number of arguments (0 for 1) (ArgumentError)
# 	from screencast_blocks.rb:137:in `<main>'

# EXAMPLE 14 - Turning Proc into Proc without &

def each_country
  yield("Colombia")
  yield("Costa Rica")
  yield("USA")
end

greeter = Proc.new { |name |puts "Hello, You're in #{name} steam store!" }

each_country(greeter)

# screencast_blocks.rb:3:in `each_country': wrong number of arguments (1 for 0) (ArgumentError)
# 	from screencast_blocks.rb:11:in `<main>'
