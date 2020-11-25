# code here!
class School
    attr_accessor :roster, :school
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.sort.each do |grade, student|
            sorted_roster[grade] = student.sort
        end
        sorted_roster
    end
end
