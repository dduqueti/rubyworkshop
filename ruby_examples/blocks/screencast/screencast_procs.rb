# EXAMPLE PROCS 1 - Creating proc
p "Creating proc!"
greeter = Proc.new do |name|
  puts "Hello, #{name}"
end
p "Inspect proc!"
p greeter.inspect

p "Executing proc!"
greeter.call("Daniel")


# EXAMPLE PROCS 2 - Passing to method
greeter = Proc.new do |name|
  puts "Hello, #{name}"
end

p "Executing proc directly!"
greeter.call("Daniel")

def say_hi(some_proc)
	some_proc.call("Everyone")
end
p "Executing proc being passed to method!"
say_hi(greeter)
