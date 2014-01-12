require 'pry'


class Shelter

	attr_accessor :client_list, :animal_list

	def initialize(client_list=[],animal_list=[])
		@client_list = client_list
		@animal_list = animal_list
		@client = nil
		@animal = nil

	end

	def get_client_list  #works!
		#list all clients
		@client_list.inject(""){ |master_list, info| master_list << "#{info.name} #{info.pets}" }

		

	end


	def get_animal_list  #works!
		#list all animals
		#but also remove animals that have been adopted
		@animal_list.inject([]){ |master_list, info| master_list << info.name }

	end

	# def can_adopt?
	# 	@animal_list.each do |info|
	# 		if info.name == @animal
	# 			@can_adopt = true
	# 		else
	# 			@can_adopt = false
	# 		end
	# 	end
	# 	self.can_adopt?
	# end

	def adopts(client,animal)
		#adopts an animal from the shelter
		@client = client
		@animal = animal


		@client_list.each do |info|  #psuedo for each client list
			if info.name == @client #&& @can_adopt == true #if the name matches client's name
				(info.pets).push(@animal)
			else
			end
			
		end
		binding.pry
		@animal_list = (self.get_animal_list).delete(@animal)

		# if @client_list.name = @client
		# 	(@client_list.pets).push(@animal)
		# 	binding.pry
		# end

		#also need to take the adopted pet out of @animal_list

	end

	def puts_up(client,animal)
		#puts up a pet up for an adoption
		@client = client #sam
		@animal = animal #spot



# 		if client.person_name = @client
# binding.pry
# 			puts @client
# 		end



			# if @client_list.include?(@client) && @animal_list.include?(@animal)
			#take that animal out of the animal_list
			#put that animal into the client's pets array



		# else
		# 	return "you don't own #{@animal}"
		# end

	end



end
