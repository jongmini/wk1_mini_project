
class Client

	attr_accessor :name, :age, :numb_of_kids, :pets

	def initialize(name,age,numb_of_kids,*pets)
		@name = name
		@age = age
		@numb_of_kids = numb_of_kids
		@pets = pets
	end

	def adopts
		#adopts an animal from the shelter
	end

	def puts_up
		#puts up a pet up for an adoption
	end

end