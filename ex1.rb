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
#Ex 7
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
#Ex 8
class Cat < Animals
  include SpecialAility
  def initialize(name,age,sex,sharp_claws=true,special_aility= 'climbing the tree')
    super(name,age,sex)
    @sharp_claws = sharp_claws
    @special_aility = special_aility
  
  end
  attr_accessor :sharp_claws
  attr_accessor :special_aility

end 

   
#Ex 9

 golden_retriever = Dog.new("NameDogs","2","m")
  # puts  golden_retriever.legs   ไม่สามารถสืบทอดจากคลาสแม่ได้เพราะไม่ได้ประกาศไว้คุณสมบัติไว้
   puts   golden_retriever.best_friend # แสดงผลลัพทืออกมาเป็น true เพราะหลังจากสืบทอดมาจากคลาสแม่แล้ว มาเพิ่มคุณสมบัติเข้าไป
   puts   golden_retriever.special_aility # แสดงผลลัพทืออกมาเป็น special_aility เพราะหลังจากสืบทอดมาจากคลาสแม่แล้ว มาเพิ่มคุณสมบัติเข้าไป

#Ex 10
class Zoo 
  def Zoo.animals
    animals = Animals.new("Dog","2","m")
    puts animals.instance_variables
  end
  def Zoo.cats
    cat = Cat.new("cat","2","m")
    puts cat.inspect
  end
  def Zoo.search(type="leg",total)
      @type = type
      @total = total
    if @type == "leg"
      if @total == 4
         puts  Dog.new("Dogs","2","m").inspect
         puts  Cat.new("Cat","2","m").inspect
      elsif @total == 2
         puts  Bird.new("Bird","2","m").inspect
      else
        "out of Animals"
      end
    elsif @type == 'food'
      mammal = Mammal.new("Ani_Mammal","2","m",total)
      puts mammal.inspect
    else
      "out of type"
  end 
end
 attr_accessor :type
 attr_accessor :total

end
#------Test
  puts "----------------- start Zoo.animals --------------"
    puts   Zoo.animals
  puts "------------------ End ---------------"
  puts "----------------- start Zoo.cats --------------"
    puts   Zoo.cats
  puts "------------------ End ---------------"
  puts "----------------- start zoo.search('leg',4) --------------"
    puts   Zoo.search("leg",4)
  puts "------------------ End ---------------"
  puts "----------------- start zoo.search('leg',2) --------------"
    puts   Zoo.search("leg",2)
  puts "------------------ End ---------------"
  puts "----------------- start zoo.search('leg',0) --------------"
    puts   Zoo.search("leg",0)
  puts "------------------ End ---------------"