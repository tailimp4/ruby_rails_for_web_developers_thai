class Animal 
	def initialize(name,age,sex)
		@name = name
		@age = age
		@sex = sex	
	end	
	attr_accessor:name,:age ,:sex
end
module SpecialAility
  attr_reader :special_aility 
end

class Mammal < Animal
	include SpecialAility

	def initialize(name,age,sex,leg,special_aility='no-special')
	super(name,age,sex)	
	@leg= leg
	@special_aility = special_aility
	@baby_food= 'Milk'
	end
	attr_accessor :leg,:baby_food
	attr_reader :special_aility
end

class Fowl < Animal
	include SpecialAility
	def initialize(name,age,sex)
	super(name,age,sex)	
	@leg = 2
	@special_aility="wing"
	end
	attr_reader :special_aility,:leg
end

class Bird < Fowl
	def initialize(name,age,sex,colour="colour black")
		super(name,age,sex)
		@colour = colour
	end
	attr_accessor :colour
end

class Dog < Mammal
	#include SpecialAility
	def initialize (name,age,sex,leg,special_aility="special_aility",best_friend=true)
		super(name,age,sex,leg,special_aility)
		@best_friend=best_friend
		end
	attr_accessor :leg,:best_friend
	
end
class Cat < Mammal
	 #include SpecialAility
	def initialize(name,age,sex,special_aility)
		super(name,age,sex,special_aility)
		@sharp_claws = true
		@leg = 4
		@special_aility = special_aility
	end
	attr_reader :sharp_claws
	attr_accessor :special_aility
end

class Zoo
	def initialize (a = [])
		@animal = a
	end
	def search(attribute, value)
      @animal.select{|a| a.send(attribute) == value} 
    end
	attr_accessor :animal
end


	golden  = Dog.new("nameDog",2,"m",4)
  	cat_thai = Cat.new("namecat",1,"m",4)
  	bird_thai = Bird.new("namebird",1,"m","red")

  zoo_dusit = Zoo.new([golden,cat_thai,bird_thai])

 
  puts "------- Zoo.search"
  puts zoo_dusit.search('nameDog',4).inspect
   puts "-------End Zoo.search"

   # puts "----------------- start Zoo.animals --------------"
    # dusit = Zoo.new(["dog","cat"])
    # puts   dusit.animals
  	# puts "------------------ End ---------------"


	#test = Cat.new("name",2,"m","Clirm the tree")

  	#puts "----------------- Test --------------"
   	#puts  "leg:" + test.leg.to_s
   	#puts  "sharp_claws:" + test.sharp_claws.to_s
   	#puts "special_aility:" + test.special_aility
   	#puts "babyFood:" + test.baby_food