
class Shelter

	attr_accessor :client_list, :animal_list

	def initialize(client_list=[],animal_list=[])
		@client_list = client_list
		@animal_list = animal_list

	end

	def list_client
		#list all clients
		master_client_list << client.name #from Markus' tip

	end

	def list_animals
		#list all animals
		master_animal_list << animal.name
		#but also remove animals that have been adopted

	end




end
