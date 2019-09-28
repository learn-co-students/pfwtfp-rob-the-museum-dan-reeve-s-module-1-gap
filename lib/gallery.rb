class Gallery
    attr_reader :name, :works
  
    @@data = {}
  
    def initialize(name)
    @name = name
    @works = []
    end

    def self.most_valuable
    all.max_by do |k, g|
        g.works.map(&:+)
    end
    end

    def self.all
    @@data.values
    end

    def self.find_or_create_by_name(gallery_name)
    return @@data[gallery_name] if @@data.key?(gallery_name)
    @@data[gallery_name] = Gallery.new(gallery_name)
    end

    def self.biggest
    @@data.values.max_by{ |g| g.works.length}.name
    end

    def self.smallest
    @@data.values.min_by{ |g| g.works.length}.name
    end

    def <<(work)
    @works << work
    end
end