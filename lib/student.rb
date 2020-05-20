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
    students_array.each {|student| self.new(student)}#list of dictionaries
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.keys.each do |key|
      if key == :twitter
        @twitter = key
      elsif key == :linkedin
        @linkedin = key
      elsif key == :github
        @github = key
      elsif key == :blog
        @blog = key
      elsif key == :profile_quote
        @profile_quote = key
      elsif key == :bio
        @bio = key
      end
    end

  end

  def self.all
    @@all
  end
end
