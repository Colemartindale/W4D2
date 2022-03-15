require_relative "employee"

class Manager < Employee 

    attr_accessor :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)
        @bonus = bonus_base * multiplier
    end

    def bonus_base
        base = 0
        q = self.employees.dup
        until q.empty?
            current_man = q.shift
            if current_man.employees.nil?
                base += current_man.salary
            else
                base += current_man.salary
                q += current_man.employees
            end
        end
        base
    end

end