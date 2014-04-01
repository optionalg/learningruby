

# local variables

a = 1
b = 2

#global variable
$c = 3

puts "Add two local variables #{a+b}"


# class and instance variables

class A
	def initialize
		@a = 1
	end	

	def printA
		#value of the last expression is returned implicitly
		"show instance variable #{@a} \n"
	end

	def printB
		1
	end


	def printC
		$c
	end

end

object = A.new
puts object.printA

#strictly typed - need to covert to string
puts 'Value of b is ' + (object.printB).to_s 

#print global variable
puts "Global variable is #{object.printC}"



