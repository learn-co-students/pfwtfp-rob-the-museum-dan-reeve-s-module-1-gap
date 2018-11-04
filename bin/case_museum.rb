require 'pry'
require_relative '../lib/museum.rb'

# Run 'ruby bin/case_museum.rb' from lesson directory to start pry session

museum = Museum.new('Metropolitan Museum of Art')
binding.pry
