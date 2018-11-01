require 'pry'
require_relative '../lib/artist.rb'
require_relative '../lib/painting.rb'
require_relative '../lib/gallery.rb'
require_relative '../lib/museum.rb'

Museum.new_from_csv

binding.pry