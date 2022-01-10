
#1.0 classification
def know_it_all(object)
  object.class
end

#-----------------------------------
#1.1 Understanding Inheritance
def is_ancestor?(klass, subclass)
  current_class = subclass
  while !current_class.superclass.nil? && current_class != klass
    current_class = current_class.superclass
  end
  current_class == klass
end

#-----------------------------------

#1.2 Inheriting Class
class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end

class Square < Rectangle
  def initialize(side)
    @length = side
    @breadth = side
  end  
end

#-----------------------------------

#1.3 Redefining, overriding, and super

class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying"
  end
end

# Your code here
class Human < Animal
  def move
    super + " by walking"
  end
end

class Penguin < Bird
  def move
    "I can move by swimming"
  end
end



