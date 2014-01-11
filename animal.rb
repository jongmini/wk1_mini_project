
class Animal

	attr_accessor :name, :age, :gender, :species, :toys

	def initialize(pet_name,pet_age,gender,species,*toys)
		@pet_name = pet_name
		@pet_age = pet_age
		@gender = gender
		@species = species
		# @toys = toys
	end


end
