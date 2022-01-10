p "Enter input array seperated by ,"
x = gets.chomp.split(",")
k = gets.chomp
y= []

x.each do |i|
  if !(i.start_with?(k))
    y.push(i)
  end
end

x.delete_if{|i| i.start_with?(k)}
p x,y
