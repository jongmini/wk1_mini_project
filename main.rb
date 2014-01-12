require './animal'
require './client'
require './shelter'

require 'pry'

shelter = Shelter.new

shelter.animal_list << Animal.new("kitty","2","f","cat","ball")
shelter.animal_list << Animal.new("garfield","4","m","cat","otis")

shelter.client_list << Client.new("jon","33","2","odie")
shelter.client_list << Client.new("calvin","7","0","hobbes")

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

	message = shelter.get_animal_list.join(",")

	when "2"
	
	message += shelter.get_client_list

	when "3"
	puts "enter the animal's name"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "gender:"; gender = gets.chomp
	print "species:"; species = gets.chomp
	print "toys:"; toys = gets.chomp
	
	shelter.animal_list << Animal.new(name,age,gender,species,toys)

	message = "added animal #{shelter.animal_list.last.name}"

	when "4"
	puts "enter the client's name"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "numb_of_kids:"; numb_of_kids = gets.chomp
	print "pets:"; pets = gets.chomp

	shelter.client_list << Client.new(name,age,numb_of_kids,pets)
# binding.pry
	message = "added client #{shelter.client_list.last.name}"
	# {shelter.client_list.last.age}
	# {shelter.client_list.last.pets}"

	when "5" #client adopts an animal
	puts "enter the client's name"
	print "name:"; client = gets.chomp
	puts "enter the animal to adopt"
	print "animal:"; animal = gets.chomp

	shelter.adopts(client,animal)
	message = "#{client} is adopting #{animal}."
	
	when "6"
	puts "enter the client's name"
	print "name:"; client = gets.chomp
	puts "enter the pet's name"
	print "pet:"; animal = gets.chomp

	shelter.puts_up(client,animal)
	message = "#{client} is putting up #{animal} for an adoption."
	# binding.pry

	else
	end
	choice = menu message

end

