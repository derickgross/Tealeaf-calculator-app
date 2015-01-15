# calculator.rb - this app will take two numbers and add, subtract, multiply or divide them

puts "Please enter the first number:"
user_input_1 = gets.chomp

puts "Now enter the second number:"
user_input_2 = gets.chomp

number1 = user_input_1.to_i
number2 = user_input_2.to_i

puts "Please enter the number of the operation: 1. add  2. subtract  3. multiply  4. divide"
operation = gets.chomp

answer = "Oops! Something went wrong!"

def report(answer)
  puts "The answer is #{answer}"
end

case operation
when "1"
  answer = number1 + number2
  report(answer)
when "2"
  answer = number1 - number2
  report(answer)
when "3"
  answer = number1 * number2
  report(answer)
when "4"
  if number2 == 0
    puts "We cannot divide by 0!"
  else
    answer = number1 / number2
    report(answer)
  end
else puts "Operation must be add, subtract, multiply or divide (1-4)"
end