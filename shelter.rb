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
		@client_list.inject(""){ |master_list, info| master_list << "#{info.name} #{info.pets}"}
		
	end


	def get_animal_list  #works!
		#list all animals
		#but also remove animals that have been adopted
		@animal_list.inject([]){ |master_list, info| master_list << info.name }

	end


	def get_available_animals()

		@animal_list.select { |x| x.owned? }
		# binding.pry

	end

	def get_adopted_animals
		@animal_list.select do |animal|
			not animal.owned?
		end
	end


	def adopts(client,animal)
		#adopts an animal from the shelter


		 
		@client_list.each do |info|  #psuedo for each client list
			if info.name == client #&& @can_adopt == true #if the name matches client's name
				# binding.pry
				(info.pets).push(animal)

				@animal_list.each do |x|
					if x.name == animal
						x.owner = true

						end
					end
			
			end
			
		end
		
		# binding.pry
		# @animal_list = (self.get_animal_list).delete(@animal)

		# if @client_list.name = @client
		# 	(@client_list.pets).push(@animal)
		# 	binding.pry
		# end

		#also need to take the adopted pet out of @animal_list

	end

	def puts_up(client,animal)
		#puts up a pet up for an adoption

		client_object = @client_list.detect { |info| info.name == client }
		binding.pry
		client_object.pets.delete(animal)

				
		@animal_list.each do |x|
			if x.name == animal
				x.owner = false

			end
		end

	end



end
