require 'pry'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do | key , value |
      self.send(("#{key}="), value)
    end
    # student_hash.each do | key, value |
    #   if (key == :name)
    #     @name = value
    #   elsif (key == :location)
    #     @location = value
    #   elsif (key == :twitter)
    #     @twitter = value
    #   elsif (key == :linkedin)
    #     @linkedin = value
    #   elsif (key == :github)
    #     @github = value
    #   elsif (key == :blog)
    #     @blog = value
    #   elsif (key == :profile_quote)
    #     @profile_quote = value
    #   elsif (key == :bio)
    #     @bio = bio
    #   elsif (key == :profile_url)
    #     @profile_quote = value
    #   end
    #  binding.pry
    #end
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do | selectedHash |
      newStudent = Student.new(:name => selectedHash[:name], :location => selectedHash.[:location])
      @@all << newStudent
    end

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
