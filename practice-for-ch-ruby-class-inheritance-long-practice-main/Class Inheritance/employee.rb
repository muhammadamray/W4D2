class Employee 
    attr_reader :name, :title, :salary, :boss
    def initialize(name, title, salary, boss)
        @name = name 
        @title = title
        @salary = salary
        @boss = boss 
        @boss.employees << self
    end


    def bonus(multiplier)
        bonus = self.salary * multiplier
    end 








end