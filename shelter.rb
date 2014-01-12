require 'pry'


class Shelter

	attr_accessor :client_list, :animal_list

	def initialize(client_list=[],animal_list=[])
		@client_list = client_list
		@animal_list = animal_list
		@client = nil
		@animal = nil

	end

	def get_client_list
		#list all clients
		result = @client_list.inject(""){ |master_list, info| master_list << info.name }

		result || ""

	end


	def get_animal_list
		#list all animals
		#but also remove animals that have been adopted
		result = @animal_list.inject(""){ |master_list, info| master_list << info.name }

		result || ""

	end

	def adopts(client,animal)
		#adopts an animal from the shelter

		client_list.each do |info| 
			if info.name = client 
				client_list.pet << animal
			end
		end


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
