require "pry"

class School

attr_accessor :roster, :grade
attr_reader :name

def initialize(name)
  @name = name
  @roster = {}
end

#hash will be built out to contain keys of grade levels. The value of each key will be an array of student names.

def add_student(name, grade)
  if @roster[grade]
    @roster[grade] << name
  else
    @roster[grade] = [name]
  end
end

def grade(grade)
  @roster[grade]
end


def sort
  @roster.each do |grade, name|
    @roster[grade] = name.sort
  end
end

#if grade (num) already exists then do not create an empty array

#However, if we're in the scenario in which the grade 9 key already exists, we will erase its current contents by creating a
#key of 9 and setting it equal to an empty array! You'll need to understand this in order to get the tests passing.




end

  #  binding.pry

#hash["new_key"] = []
#hash["new_key"] << "new_value_for_value_array"

#hash
 #=> {"new_key"=>["new_value_for_value_array"]}

#You should be able to add a student to
#the school by calling the add_student method
#and giving it an argument of the student's name and their grade.

#school = School.new("Bayside High School")
