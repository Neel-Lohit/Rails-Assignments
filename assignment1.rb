 p "Enter input array seperated by ,"
 x = gets.chomp.split(",")
 k = gets.chomp
y= []
 x.each do |i|
  if !(i == k)
    y.push(i)
  end
end
 x.delete("apple")
p x,y
