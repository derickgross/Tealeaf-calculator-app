# calculator2.rb - an update of calculator.rb, because I'm having trouble pushing an update of that file to Github

puts "Please enter the first number:"
user_input_1 = gets.chomp

# verify that the user's input will behave like an integer
verify_input_1 = Integer(user_input_1.delete ".") rescue false

while !(verify_input_1)
  puts "Your input is invalid.  Please enter a number:"
  user_input_1 = gets.chomp
  verify_input_1 = Integer(user_input_1.delete ".") rescue false
end


puts "Now enter the second number:"
user_input_2 = gets.chomp

# verify that the user's input will behave like an integer
verify_input_2 = Integer(user_input_2.delete ".") rescue false

while !(verify_input_2)
  puts "Your input is invalid.  Please enter a number:"
  user_input_2 = gets.chomp
  verify_input_2 = Integer(user_input_2.delete ".") rescue false
end

number1 = user_input_1.to_f
number2 = user_input_2.to_f

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