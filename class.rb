class Hospital

	attr_reader :name, :number, :department, :mobile, :address #creating attribute accessor sicce instance variable are private default, to invoke them.

	def initialize address, no_of_doctors 
		@address = address
		@no_of_doctors = no_of_doctors  # initialize method is only method which is called while calling an object which class new
	end

	def doctor name, number, department
		@name = name
		@number = number
		@department = department
		puts "doctor is #{@name}, his number is #{@number} and he is from #{@department} department"
	end

	def patient
		@name = "George"
		@mobile = "9658745124"
		@address = "banshankari"
	end

end	

details = Hospital.new "banglore", 3	# creating an object

p details.inspect #inspect is used to view the instance variable values also.

puts details.doctor "Vishnu", "9645002001", "cardiology"

#p details.patient

puts "patient is #{details.name}, contact him at #{details.mobile} and he is staying at #{details.address}"