# code here!


class School

    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if self.roster[grade]
            self.roster[grade] << name
        else
            self.roster[grade] = []
            self.roster[grade] << name
        end
    end

    def grade(number)
        self.roster[number]
    end

    def sort
        self.roster.each_key do |mykeys|
            roster[mykeys] = roster[mykeys].sort
        end
        # sorted_roster = []
        # self.roster.each do |grade_array|
        #     sorted_roster << grade_array.sort_by
        # end
    end
end
