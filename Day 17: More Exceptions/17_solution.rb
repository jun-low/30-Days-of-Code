class RangeError < StandardError
end
# Write your code here
class Calculator
    def power(n, p)
        if n.negative? || p.negative?
            raise RangeError.new("n and p should be non-negative")
        else
            n**p 
        end
    end
end

myCalculator = Calculator.new()

t = gets.to_i

for i in 1..t
    n, p = gets.split.map(&:to_i)
    begin
        ans = myCalculator.power(n, p)
        puts ans.to_i
    rescue RangeError => e
        puts e.message
    end
end