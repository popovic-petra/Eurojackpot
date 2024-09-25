require 'pry-byebug'

puts "Welcome to Euro jackpot!"
puts "Try out your luck..."

num_five = nil
num_two = nil

first_five = []
additional_two = []

#binding.pry

puts "Enter your combination of 5 main numbers in range 1 - 50!"

while first_five.length < 5
  puts "Enter your #{first_five.length + 1}. winning number:"
  num_five = gets.chomp.to_i

  if num_five > 0 && num_five < 51
    first_five << num_five
  else
    puts "You did not enter a valid option! Try again. Remember, the number must be in range 1 - 50 :)"
  end
end

puts "Enter 2 additional numbers in range 1 - 10!"

while additional_two.length < 2
  puts "Enter your #{additional_two.length + 1}. additional number:"
  num_two = gets.chomp.to_i

  if num_two > 0 && num_two < 11
    additional_two << num_two
  else
    puts "You did not enter a valid option! Try again. Remember, the number must be in range 1 - 10 :)"
  end
end

puts "Your combinaton is: #{first_five}"
puts "Your additional picks are: #{additional_two}"