require_relative Employee

class Manager < Employee

    attr_accessor :employees

    def initialize(name, title, salary, boss=nil)
       super(name, title, salary, boss)
       @employees = []
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