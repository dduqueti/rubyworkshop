# EXAMPLE 3
p "Creating Proc!"
greeter_p = proc do |name|
  puts "Hello, #{name}"
end
p "Creating Lambda!"
greeter_l = lambda do |name|
  puts "Hello, #{name}"
end

p "Inspecting Proc"
greeter_p                   	# => #<Proc:0x0000000338efe8@-:1>
p "Inspecting lambda"
greeter_l                   	# => #<Proc:0x0000000338efc0@-:4 (lambda)>

p "Executing Proc"
greeter_p.call("Daniel")
p "Executing Lambda"
greeter_l.call("Everyone")

# EXAMPLE 4 - Lambdas short syntax

greeter_l = ->(name) {
  puts "Hello, #{name}"
}

greeter_l
