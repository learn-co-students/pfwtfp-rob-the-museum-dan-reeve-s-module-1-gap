require 'pry'
require_relative '../lib/museum.rb'

museum = Museum.new('Metropolitan Museum of Art', 'art_heist.csv')

binding.pry

puts "Run 'rub bin/case_museum.rb' from lesson directory to start pry session"
