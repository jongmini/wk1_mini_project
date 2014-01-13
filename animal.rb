
class Animal

	attr_accessor :name, :age, :gender, :species, :owner, :toys

	def initialize(name,age,gender,species,owner=nil,*toys)
		@name = name
		@age = age
		@gender = gender
		@species = species
		@owner = owner
		@toys = toys
	end

	def owned?
		@owner.nil?
	end

end
