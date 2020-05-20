require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name = student_hash.values[0]
    @location = student_hash.values[1]
    @@all << self
  end

  def self.create_from_collection(students_array) #output of scraper.scrape_index_page, {name => "a", location => "b", profile_url => "c"}
    new_array = []
    student_hash = {}
    students_array.each do |student| #list of dictionaries
      student_hash[:name] = student[:name]#hash
      student_hash[:location] = student[:location]
      new_array << student_hash
    end
    new_array

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
