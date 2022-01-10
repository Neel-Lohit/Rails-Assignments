# add a lambda to the following code which increments any number passed to it by 1.

Increment = lambda {|x| x + 1 } # your lambda between the braces
p Increment.call(5)


#blocks
def calculate(a,b)
  yield(a,b)
end

puts calculate(2,3) {|a,b| a+b}
puts calculate(2,3) {|a,b| a-b}
puts calculate(2,3) {|a,b| a*b}