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
	 
#Ex 5
class Mammal < Animal
  include SpecialAility
  def initialize(name,age,sex,leg,special_aility= 'no-special_aility')
    super(name,age,sex)
    @leg = leg
    @baby_food = 'Milk'
    @special_aility =special_aility
  end
  attr_accessor :leg
  attr_reader :baby_food
  attr_reader :special_aility
end	 

#Ex 6
class Bird < Animal
  def initialize(name,age,sex)
    super(name,age,sex)
    @leg = 2
    @total_wing = 2
  
  end
  attr_accessor :leg ,:total_wing
  

end	 
#Ex 7
#class Dog < Animal
class Dog < Mammal
	include SpecialAility
  def initialize(name,age,sex,leg,special_aility= 'special_aility',best_friend=true)
    super(name,age,sex,leg)
    @best_friend = best_friend
    @special_aility = special_aility
    
  end
  attr_accessor :best_friend
  attr_accessor :special_aility

end	

  test = Dog.new("ss","2","m",4)
  puts "----------------- Dog --------------"
   puts  test.best_friend
   puts test.special_aility
#Ex 8
class Cat < Mammal
  include SpecialAility
  def initialize(name,age,sex,leg,special_aility= 'climbing the tree',sharp_claws=true)
    super(name,age,sex,leg)
    @sharp_claws = sharp_claws
    @special_aility = special_aility
  
  end
  attr_accessor :sharp_claws
  attr_accessor :special_aility

end 

   
#Ex 9

   golden_retriever = Dog.new("NameDogs","2","m",4)
  # puts  golden_retriever.legs   ไม่สามารถสืบทอดจากคลาสแม่ได้เพราะไม่ได้ประกาศไว้คุณสมบัติไว้
   puts   golden_retriever.best_friend # แสดงผลลัพทืออกมาเป็น true เพราะหลังจากสืบทอดมาจากคลาสแม่แล้ว มาเพิ่มคุณสมบัติเข้าไป
   puts   golden_retriever.special_aility # แสดงผลลัพทืออกมาเป็น special_aility เพราะหลังจากสืบทอดมาจากคลาสแม่แล้ว มาเพิ่มคุณสมบัติเข้าไป

#Ex 10
class Zoo 
    def initialize(a = [])
      @animals = a
    end
    def search(attribute, value)
      @animals.select{|a| a.send(attribute) == value} 
    end 
    attr_accessor :animals,:name_animal

end

  golden  = Dog.new("nameDog",2,"m",4)
  cat_thai = Cat.new("namecat",1,"m",4)
  bird_thai = Bird.new("namebird",1,"m")

  zoo_dusit = Zoo.new([golden,cat_thai,bird_thai])

 
  puts "------- Zoo.search"
  puts zoo_dusit.search('leg',2).inspect
   puts "-------End Zoo.search"

#------Test
  puts "----------------- start Zoo.animals --------------"
     dusit = Zoo.new(["dog","cat"])
     puts   dusit.animals
  puts "------------------ End ---------------"
