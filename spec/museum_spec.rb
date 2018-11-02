require 'spec_helper'
require_relative '../lib/artist.rb'
require_relative '../lib/gallery.rb'
require_relative '../lib/painting.rb'
require_relative '../lib/museum.rb'

describe 'Museum' do
  describe '.new_from_csv' do

    before(:example) do
      @museum = Museum.new('Metropolitan Museum of Art')
    end

    it 'exists' do
      expect( @museum ).to respond_to(:new_from_csv)
    end


    it 'creates galleries and stores them as class instances' do
      @museum.new_from_csv('art_heist.csv')
      expect( @museum.galleries.length ).to eq(3)
      expect( @museum.galleries.map {|gallery| gallery.name} ).to include("Red")
      expect( @museum.galleries.map {|gallery| gallery.name} ).to include("Green")
      expect( @museum.galleries.map {|gallery| gallery.name} ).to include("Blue")
    end

    # add more tests for artsits/paintings
  end

  describe '.biggest_gallery' do
    before(:example) do
      @museum = Museum.new('Metropolitan Museum of Art')
      @museum.new_from_csv('art_heist.csv')
    end

    it 'exists' do
      expect( @museum ).to respond_to(:biggest_gallery)
    end

    it 'returns the correct gallery' do
      expect(@museum.biggest_gallery).to eq("Red")
    end
  end

  describe '.smallest_gallery' do

    before(:example) do
      @museum = Museum.new('Metropolitan Museum of Art')
      @museum.new_from_csv('art_heist.csv')
    end

    it 'exists' do
      expect( @museum ).to respond_to(:smallest_gallery)
    end

    it 'returns the correct gallery' do
      expect(@museum.smallest_gallery).to eq("Blue")
    end
  end

  describe '.artist_most_occurring' do

    before(:example) do
      @museum = Museum.new('Metropolitan Museum of Art')
      @museum.new_from_csv('art_heist.csv')
    end

    it 'exists' do
      expect( @museum ).to respond_to(:artist_most_occurring)
    end

    it 'returns the correct artist' do
      expect(@museum.artist_most_occurring).to eq("Pablo Picasso")
    end
  end

  describe '.value_of_artist' do

    before(:example) do
      @museum = Museum.new('Metropolitan Museum of Art')
      @museum.new_from_csv('art_heist.csv')
    end

    it 'exists' do
      expect( @museum ).to respond_to(:value_of_artist)
    end

    it 'returns the correct value of Vincent van Goghs works' do
      expect(@museum.value_of_artist("Vincent van Gogh")).to eq(194400000)
    end

    it 'returns the correct value of Mark Rothko works' do
      expect(@museum.value_of_artist("Mark Rothko")).to eq(186000000)
    end
  end
end
