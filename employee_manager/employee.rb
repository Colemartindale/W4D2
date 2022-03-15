class Employee

    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name 
        @title = title 
        @salary = salary
        @title = title
    end

    def bonus(multiplier)
        @bonus = self.salary * multiplier
    end

end