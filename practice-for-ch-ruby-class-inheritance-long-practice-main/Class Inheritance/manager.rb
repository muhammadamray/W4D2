require_relative Employee

class Manager < Employee

    attr_accessor :employees

    def initialize(name, title, salary, boss)
       super
       @employees = [boss]
    end

    def total_salary
        total = 0
        employees.each do |employee|
            total += employee.salary
        end 

        total
    end 

    def bonus(multiplier)
        total_salary * multiplier
    end 




end 