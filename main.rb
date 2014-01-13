require './animal'
require './client'
require './shelter'

require 'pry'

shelter = Shelter.new

shelter.animal_list << Animal.new("kitty","2","f","cat",nil,"ball")
shelter.animal_list << Animal.new("garfield","4","m","cat",nil,"otis")
shelter.animal_list << Animal.new("otis","2","m","dog",nil,"ball")
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
	
	available_animals = shelter.get_available_animals()
    message = "List of avilable animals:\n"
    available_animals.each do |animal|
    message += "#{animal.name} the #{animal.species}"
    end

 	# list = shelter.get_animal_list
	# message = list.join(",")

	when "2"
	
	message += shelter.get_client_list

	when "3"
	puts "enter the animal's name"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "gender:"; gender = gets.chomp
	print "species:"; species = gets.chomp
	print "toys:"; toys = gets.chomp
	
	shelter.animal_list << Animal.new(name,age,gender,species,owner=nil,toys)

	message = "added animal #{shelter.animal_list.last.name}
	there are #{shelter.animal_list}"


	when "4"
	puts "enter the client's name"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "numb_of_kids:"; numb_of_kids = gets.chomp
	# print "pets:"; pets = gets.chomp


	
	# {shelter.client_list.last.age}
	# {shelter.client_list.last.pets}"

	#graham's idea

	pets = true
	while pets == true
	puts "do you own a pet?"
	answer = gets.chomp
	
		if answer == "yes"
		print "pet's name:"; name = gets.chomp
		print "pet's age:"; age = gets.chomp
		print "pet's gender:"; gender = gets.chomp
		print "pet's species:"; species = gets.chomp
		print "pet's toys:"; toys = gets.chomp
		
		shelter.animal_list << Animal.new(name,age,gender,species,owner=true,toys)
		pet_names =[]
		pet_names << shelter.animal_list.last.name
		# message += "added client #{shelter.client_list.last.name}"
		message += "added pet #{shelter.animal_list.last.name}"

		elsif answer == "no"

		pets = false

		end
	end

	shelter.client_list << Client.new(name,age,numb_of_kids,pet_names)
	message = "added client #{shelter.client_list.last.name}  "
# binding.pry
	


	when "5" #client adopts an animal


	puts "enter the client's name"
	print "name:"; client = gets.chomp
	puts "enter the animal to adopt"
	print "animal:"; animal = gets.chomp
	
	if not (shelter.get_client_list).include?(client)
		message = "you are not a client"
# binding.pry
	elsif not (shelter.get_animal_list).include?(animal)
# binding.pry
		message = "animal is not in the shelter"
	else
		shelter.adopts(client,animal)
		message = "#{client} is adopting #{animal}."
	end
	
	
	# message = "#{client} is adopting #{animal}."
	
	when "6"
	puts "enter the client's name"
	print "name:"; client = gets.chomp
	puts "enter the pet's name"
	print "pet:"; animal = gets.chomp
# binding.pry
	if (shelter.get_client_list).include?(client) && 
		(shelter.get_adopted_animals.inject(""){|x,y| x << y.name}).include?(animal)
		message = "#{client} is putting up #{animal} for adoption"
binding.pry
		shelter.puts_up(client,animal)
# binding.pry
	# elsif not (shelter.get_adopted_animals).include?(animal)
	# 	message = "animal is not your pet"
	else
		# shelter.puts_up(client,animal)
		# message = "#{client} is putting #{animal} for adoption."
		message = "you are not a client or the animal is not available."
	end



	else
	end
	choice = menu message

end

