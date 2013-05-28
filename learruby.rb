# test comment 
class Person
  def initialize(name,age,status)
    @name = name 
    @age = age
    @status = status
  end
  attr_reader :name #getter only
#attr_write setter onliy
  attr_accessor:age
end

module SpecialAility
  attr_reader :special_aility 
end

class Doctor < Person
  include SpecialAility
attr_accessor :title
  def initialize(name, age, status, title= 'no-title')
    super(name,age,status)
    raise "Error Value" unless ['Mr','Sur','no-title'].include?(title)
    @title = title
    @special_aility = 'can heal'
  end
  def skill
    if @title == 'Mr'
      " out Mr"
    elsif @title == 'Sur'
      "Out Sur "
    else
      "else dd"
    end 
  end
end


class Engineer < Person
  include SpecialAility
  def initialize(name,age,status,special_aility)
    super(name,age,status)
    @special_aility =special_aility
  end
  attr_accessor :title
end

engineer = Engineer.new('Tai',31,'live','Can build Bridges')
puts engineer.special_aility
puts engineer.name