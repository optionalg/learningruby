class Post
	def initialize title, body, author
		@title  = title
		@body   = body
		@author = author
	end

	def title
		@title
	end
end


# array of objects

posts = [
	Post.new('First post', 'Some text', 'bob the builder'),
	Post.new('Second post', 'Some second text', 'spiderman'),
	Post.new('Third post', 'Some thirdly text', 'batman'),
]

# block declartion to get post object and print title

puts posts.map { |post| post.title }

# push to array

last_post = Post.new('Fourth post', 'Some fourth text', 'batman')

posts.push(last_post) # also can use posts << last_post

# size or length of array - you can also use size or length instead

puts(posts.count)

# checks if a given object is present in the array

puts posts.include? last_post


# returns a new array containing all objects matching condition

puts posts.select { |post| post. title == 'First post' }

# new array

b = ['one','two','three','four']

# select last element of array

puts "last element of array: #{b[-1]}"

# slicing 

puts b[1..3] #inclusive of index element 3
puts b[1...3] #exclusive of index element 3
