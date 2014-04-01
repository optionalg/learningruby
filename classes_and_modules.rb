
class User
	def initialize username, first_name, last_name
		@username = username
		@first_name = first_name
		@last_name = last_name
		@loggedIn = false
	end


	def authenticate password
		stored_password = findPassword self # methods inside the class are called directly and object is referred to as 'self'

		if password == stored_password
			@loggedIn = true
			return true
		end
		false
	end

	# list all private methods
	private 

	def findPassword user
		'secret'
	end

end


user = User.new 'userbob','bob','builder'

if user.authenticate 'secret'
	puts 'User was authenticated'
else
	puts 'Something went wrong.'
end