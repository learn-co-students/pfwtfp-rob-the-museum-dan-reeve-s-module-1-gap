class Artist
  attr_accessor :name, :paintings
  def initialize(name)
    @name = name
    @paintings = []
  end
end