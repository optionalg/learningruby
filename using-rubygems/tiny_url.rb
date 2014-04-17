require "httparty"
require "rainbow"

class TinyUrlService
	attr_reader :url

	def initialize url
		@url = url
	end

	def call
		response = HTTParty.get "http://tinyurl.com/api-create.php?url=#{@url})"
		puts "The URL is: " + response.blue
	end
end

print "This will generate a tiny URL".color(:blue)

TinyUrlService.new("https://tutsplus.com").call