require './animal'
require './client'
require './shelter'

require 'pry'

shelter = Shelter.new

def menu message
  puts `clear`
  puts "*** Happy Tails v1.0 ***\n\n"

  puts "#{message}\n\n" unless message.empty?

  puts '1 : display all animals'
  puts '2 : display all clients'
  puts '3 : create an animal'
  puts '4 : create an client'
  puts '5 : facilitate client adopts an animal'
  puts '6 : facilitate client puts an animal up for adoption'
  puts "q : Quit\n\n"
  print '--> '
  gets.chomp
end

message = ""
choice = menu message
while choice != 'q'
	message = ""
	case choice
	when "1"
	puts pet_name

	when "2"
	name


	when "3"
	puts "enter the animal's name"
	print "name:"; pet_name = gets.chomp
	print "age:"; pet_age = gets.chomp
	print "gender:"; gender = gets.chomp
	print "species:"; species = gets.chomp
	print "toys:"; toys = gets.chomp
	binding.pry
	shelter.animal_list << pet_name
	
	when "4"
	puts "enter the client's name"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "numb_of_kids:"; numb_of_kids = gets.chomp
	print "pets:"; pets = gets.chomp
	# when 
	# when 
	# when 

	else
	end
	choice = menu message

end

