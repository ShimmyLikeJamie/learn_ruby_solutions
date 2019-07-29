#write your code here
def add num1, num2
    result = num1 + num2
    result
end

def subtract num1, num2
    result = num1 - num2
    result
end

def sum array
    result = 0
    array.each {|i|
        result += i
    }
    result
end

def multiply array
    result = array[0]
    array.each {|i|
        result *= i
    }
    result /= array[0]
    result
end

def power num1, num2
    result = num1 ** num2
    result
end

def factorial num
        
    result = 1    
    while num > 0
        result *= num
        num -= 1
    end

    return result
    end
