require_relative "manager"

class Employee

    attr_accessor :name, :title, :salary, :boss, :employees

    def initialize(name, salary, title, boss)
        @name = name 
        @title = title 
        @salary = salary
        @title = title
        @employees = []
    end

    def bonus(multiplier)
        @bonus = self.salary * multiplier
    end

end


while false
    load "employee.rb"
    ned = Manager.new("Ned", 1000000, "Founder", boss=nil)
    darren = Manager.new("Darren", 78000, "TA Manager", "Ned")
    david = Employee.new("David", 10000, "TA", "Darren")
    ned.add_employee(darren)
    darren.add_employee(david)
    ned.bonus(0.5)
end