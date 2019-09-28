require 'csv'

class Museum

  def initialize(name, museum_csv_filename)
    @name = name

    raise 'A CSV file is required' if !museum_csv_filename.end_with?(".csv")
    @museum_csv_filename = museum_csv_filename

  end

  def new_from_csv
    # Here's the data file, pass this to CSV.read (see the CSV documentation for
    # more help!
    data_file = (File.join(File.dirname(__FILE__), '..', @museum_csv_filename))

    CSV.foreach(data_file) do |row|
      gallery = Gallery.find_or_create_by_name(row[1])
      artist = Artist.find_or_create_by_name(row[3])
      painting = Painting.create(row[0], row[2], artist, row[4])
      artist.add_work(painting) if artist.works.none? {|existing_painting| existing_painting.title == painting.title }
      gallery << painting
    end
  end


  def biggest_gallery
    Gallery.biggest
  end

  def smallest_gallery
    Gallery.smallest
  end

  def artist_most_occurring
    Artist.most_prolific.name
  end

  def value_of_artist(artist_name)
    Artist.find_by_name(artist_name).portfolio_value
  end

  def galleries
    Gallery.all
  end

end
