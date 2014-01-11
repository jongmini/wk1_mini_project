
class Client

	attr_accessor :name, :age, :numb_of_kids, :pets

	def initialize(person_name,person_age,numb_of_kids,*pets)
		@person_name = person_name
		@person_age = person_age
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