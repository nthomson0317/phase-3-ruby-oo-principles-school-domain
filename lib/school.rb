# code here!
require 'pry'
class School 
    attr_accessor :name, :roster

    
    roster = {7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]}
    def initialize(name)
        @name = name, 
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
        roster
    end

    def grade(grade_number)
        return roster[grade_number]
    end

    def sort
        sorted = {}
        roster.each do |grade, students| 
            sorted[grade] = students.sort
        end
       sorted
        
    end

    # binding.pry
end

