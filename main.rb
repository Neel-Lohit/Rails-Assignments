#  p "Enter input array seperated by ,"
#  x = gets.chomp.split(",")
#  k = gets.chomp
# y= []
#  x.each do |i|
#   if !(i == k)
#     y.push(i)
#   end
# end
#  x.delete("apple")
# p x,y

# k = gets.chomp
# y= []

# x.each do |i|
#   if !(i.start_with?(k))
#     y.push(i)
#   end
# end

# x.delete_if{|i| i.start_with?(k)}
# p x,y


fruit_colors = {'apple' => 'red', 'mango' => 'yellow','grape' => 'black', 'banana' => 'yellow'}
p fruit_colors.keys
p fruit_colors.values
fruit_colors.delete('banana')
p fruit_colors


# add a lambda to the following code which increments any number passed to it by 1.

Increment = lambda {|x| x + 1 } # your lambda between the braces
p Increment.call(5)


def calculate(a,b)
  yield(a,b)
end

puts calculate(2,3) {|a,b| a+b}
puts calculate(2,3) {|a,b| a-b}
puts calculate(2,3) {|a,b| a*b}


 