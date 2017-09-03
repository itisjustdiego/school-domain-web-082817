require 'pry'
class School

  attr_accessor :roster, :name
  # attr_accessor :roster

  # @@students = []

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    # @roster[grade] = []
    # if @roster == {}
    #   @roster[grade] += name
    #   binding.pry
    # else
      # roster[grade] (which is an array) gets the name appended to it
    # @@students << name
      # @roster[grade] << name
    # end
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end
