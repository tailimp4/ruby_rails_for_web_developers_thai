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

  test = Mammal.new("tai","31","m","4")
  	 puts Mammal
 	 print test.name + " age: " + test.age + " sex: " + test.sex  + " total_leg: " + test.total_leg + " baby_food: " + test.baby_food  + " special_aility :" + test.special_aility