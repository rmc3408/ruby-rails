def multiply(num1, num2)
  num1.to_f * num2
end

def addition(num1, num2)
  num1 + num2
end

def substract(num1, num2)
  num1 - num2
end

def divider(num1, num2)
  num1 / num2
end

puts 'Enter First Number'
user_input1 = gets.chomp.to_f
puts 'Enter Second Number'
user_input2 = gets.chomp.to_f
puts 'Enter operation number - 1 for multiply, 2 for divider, 3 for addition, 4 for substract'
userInputOperation = gets.chomp

result = case userInputOperation
         when '1'
           multiply(user_input1, user_input2)
         when '2'
           divider(user_input1, user_input2)
         when '3'
           addition(user_input1, user_input2)
         when '4'
           substract(user_input1, user_input2)
         when '0', '5'
           'enter  1, 2, 3 or 4'
         else
           'invalid operation'
         end

puts "The result from #{userInputOperation} is #{result}"
