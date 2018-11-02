require 'csv'

class Museum

  def initialize(name)

  end

  def new_from_csv(museum_csv_file)
    # Here's the data file, pass this to CSV.read (see the CSV documentation for
    # more help!
    data_file = (File.join(File.dirname(__FILE__), '..', museum_csv_file))
  end

  def biggest_gallery

  end

  def smallest_gallery

  end

  def artist_most_occurring

  end

  def value_of_artist(artist_name)

  end

end
