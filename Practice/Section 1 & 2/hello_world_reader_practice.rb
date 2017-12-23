# puts "Hello enter in your first name"
# first_name = gets.chomp

# puts "What is your last name?"
# last_name = gets.chomp

# name = first_name + " " + last_name

# puts "Welcome #{first_name} #{last_name}, to the analyzer!"
# puts "Your first name is #{first_name.length} characters long and your last name is #{last_name.length} characters long."
# puts "Your name backward is #{name.reverse}."

def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end
def divide(first_number, second_number)
  first_number.to_f / second_number.to_f
end
def substract(first_number, second_number)
  first_number.to_f - second_number.to_f
end
def mod(first_number, second_number)
  first_number.to_f % second_number.to_f
end

puts "What operation you want to do? 1) multiply 2) divide 3) substract 4) find remainder"
operation = gets.chomp

puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp

if operation == '1'
  puts "You have chosen to multiply"
  result = multiply(first_number, second_number)
elsif operation == '2'
  puts "You have chosen to divide"
  result = divide(first_number, second_number)
elsif operation == '3'
  puts "You have chosen to subtract"
  result = substract(first_number, second_number)
elsif operation == '3'
  puts "You have chosen to find the remaider"
  result = mod(first_number, second_number)
else
  puts "You have made an invalid choice"
end 

puts "The result is #{result}"