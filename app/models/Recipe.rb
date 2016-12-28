require 'win32ole'

class Recipe 
	include HTTParty

	#'882aeb66866bf7916d3af3fa1e295a28'
	key_value = ENV['FOOD2FORK_KEY']
	hotsport = #ENV['FOOD2FORK_SERVER_AND_PORT']

	base_uri "http://#{hotsport}/api/"
	default_params key: key_value
	format :json

	def self.for term
		 get("/search", query: {q: term})["recipes"]
	end
end
