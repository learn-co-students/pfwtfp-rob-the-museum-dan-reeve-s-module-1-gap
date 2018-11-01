require 'spec_helper'

describe 'Museum' do
  describe '.new_from_csv' do
    it 'exists' do
      expect( Museum ).to respond_to(:new_from_csv)
    end
    
    
    it 'creates galleries and stores them as class instances' do
      Museum.new_from_csv
      expect( Museum.galleries.length ).to eq(3)
      expect( Museum.galleries.map {|gallery| gallery.name} ).to include("Red")
      expect( Museum.galleries.map {|gallery| gallery.name} ).to include("Green")
      expect( Museum.galleries.map {|gallery| gallery.name} ).to include("Blue")
    end
    
    # add more tests for artsits/paintings
  end
  
  describe '.biggest_gallery' do
    it 'exists' do
      expect( Museum ).to respond_to(:biggest_gallery)
    end
    
    it 'returns the correct gallery' do
      expect(Museum.biggest_gallery).to eq("Red")
    end
  end
  
  describe '.smallest_gallery' do
    it 'exists' do
      expect( Museum ).to respond_to(:smallest_gallery)
    end
    
    it 'returns the correct gallery' do
      expect(Museum.smallest_gallery).to eq("Blue")
    end
  end
  
  describe '.artist_most_occurring' do
    it 'exists' do
      expect( Museum ).to respond_to(:artist_most_occurring)
    end
    
    it 'returns the correct artist' do
      expect(Museum.artist_most_occurring).to eq("Pablo Picasso")
    end
  end
  
  describe '.value_of_artist' do
    it 'exists' do
      expect( Museum ).to respond_to(:value_of_artist)
    end
    
    it 'returns the correct value of Vincent van Goghs works' do
      expect(Museum.value_of_artist("Vincent van Gogh")).to eq(194400000)
    end
  end
end
