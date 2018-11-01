# Rob the Museum

## Learning Goals

- Read information in from CSV file
- Follow tests to establish criminal conspiracy

## Introduction

In this lab, you are a notorious art thief. Your goal is to "case" the museum
and establish critical information about the crime that you are about to
commit.

![The Great Muppet Caper](https://media.giphy.com/media/4wmnIO4AB9OI8/giphy.gif)

### Read Information in from CSV file

To start gathering information about your upcoming art heist, you will need to
import your data from the `art_heist.csv` spreadsheet. Inside the
`lib/museum.rb` file you will see a method called `self.new_from_csv`. In this
method you should load up the [CSV][] file and save it to a variable where the
data can be used in other methods.

### Follow Tests to Establish Criminal Conspiracy

Now that you have all of the data that you need, use the tests to guide you to the following information:

* Which gallery has the most paintings?
* Which gallery has the fewest?
* Which artist has the most paintings in the museum?
* What is the total value of all of the Van Gogh paintings in the museum?

## Instructions

Multiple classes are not required but are encouraged. You will need to have one
major class to manage your relationships. We've given you some information
about the methods you will need to build to pass the tests. As long as you
arrive at the correct answers, how you build your methods is up to you!
Remember to research the built in methods along the way - they will make your
research on robbing the museum a lot quicker.

### Museum Class

- Start with `self.new_from_csv` -  take `art_heist.csv` and convert values to instances of galleries, paintings and artists.
  - A museum has multiple galleries
  - A gallery has multiple paintings
  - An artist has multiple paintings
  - A painting belongs to an artist and contains its value
- `self.biggest_gallery`: return the name of the biggest gallery
- `self.smallest_gallery`: return the name of the smallest gallery
- `self.artist_most_occurring`: return the name of the artist that has the most paintings in the museum
- `self.value_of_artist(artist_name)`: given the name of any artist, it should return the total sum of that artist's works. Some artists have one work, and some artists have multiple works. 

*Bonus Challenge: If we could steal all the paintings in one gallery to sell for money, which would be best?*

## Conclusion

Now you are all ready to rob the museum!

[CSV]: https://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html
