
class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def bark
    
  end
  
  def eat
    
  end

  def chase_cat
    
  end

  def teach_trick(trick,&block)
    self.define_singleton_method(trick,&block)
  end

  def method_missing(message,*args)
    puts "#{@name} doesn't know how to #{message}!"
  end

end

d = Dog.new('Lassie')
d.teach_trick(:dance) { "#{@name} is dancing!" }
puts d.dance
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo
puts
d2=Dog.new('Fido')
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
puts
d3=Dog.new('Stimpy')
puts d3.dance
puts d3.laugh


