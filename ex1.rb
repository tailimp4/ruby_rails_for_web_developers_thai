# Ex.1 
animals = ['Cat','Dog','Iguana',nil]
#print animals
#Ex2
	animals.each do |animals|
		puts animals
	end 
#Ex	3

personal = { 
  name: "Tai",
  email: "taik@revenuescrien.com",
  colors: ["blue", "red", "black"]
}
#Ex 4
class Animals
  def initialize(name,age,sex)
    @name = name 
    @age = age
    @sex = sex
  end

  attr_accessor:name
  attr_accessor:age
  attr_accessor:sex
end
module SpecialAility
  attr_reader :special_aility 
end
	 
#Ex 5
class Mammal < Animals
  include SpecialAility
  def initialize(name,age,sex,total_leg,baby_food= 'Milk',special_aility= 'no-special_aility')
    super(name,age,sex)
    @total_leg = total_leg
    @baby_food = baby_food
    @special_aility =special_aility
  end
  attr_accessor :total_leg
  attr_reader :baby_food
  attr_reader :special_aility
end	 

#Ex 6
class Bird < Animals
  def initialize(name,age,sex,total_leg=2,total_wing=2)
    super(name,age,sex)
    @total_leg = total_leg
    @total_wing = total_wing
  
  end
  attr_accessor :total_leg
  attr_accessor :total_wing

end	 
#Ex 6
class Dog < Animals
	include SpecialAility
  def initialize(name,age,sex,best_friend=true,special_aility= 'special_aility')
    super(name,age,sex)
    @best_friend = best_friend
    @special_aility = special_aility
  
  end
  attr_accessor :best_friend
  attr_accessor :special_aility

end	
  test = Dog.new("ss","2","m")
  	 puts test.best_friend
 	 puts test.special_aility