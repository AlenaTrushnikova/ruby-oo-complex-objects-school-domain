# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] = [] if !@roster.include?(grade)
        @roster[grade] << student_name    
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = @roster.sort.to_h
        sorted_roster.each {|key, value| value = value.sort!}
        sorted_roster
    end

end
