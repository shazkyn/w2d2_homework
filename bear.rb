
class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def go_fish(river)
    fish = river.fish.pop()
    @stomach.push(fish)
  end
end
