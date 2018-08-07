class River

attr_reader :name, :fish

def initialize(name, fish)
  @river = name
  @fish = fish || []
end

def get_fish()
  return @fish[0]
end

end
