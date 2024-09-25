require 'pry-byebug'

puts "Welcome to EuroJackpot!"
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

my_pick = first_five + additional_two
#my_pick = [1, 2, 3, 4, 5, 6, 7]
puts "Your combinaton is: #{my_pick}"

draw = 0
year = 0

loop do
  drawn_numbers_five = []
  drawn_numbers_two = []

  while drawn_numbers_five.length < 5
    drawn_num_five = rand(1..50)
    drawn_numbers_five << drawn_num_five
  end
  
  while drawn_numbers_two.length < 2
    drawn_num_two = rand(1..10)
    drawn_numbers_two << drawn_num_two
  end

  drawn_numbers = drawn_numbers_five + drawn_numbers_two
  #drawn_numbers = [1, 2, 3, 4, 5, 6, 7]
  
  if my_pick.sort == drawn_numbers.sort
    puts "YOU JUST WON EUROJACKPOT!!!"
    break
  else
    puts "Winning combination was: #{drawn_numbers} :( Try again!"
    draw += 1
      if draw == 104
        year += 1
      end
  end
end

puts "It only took you #{year} years!!!"
