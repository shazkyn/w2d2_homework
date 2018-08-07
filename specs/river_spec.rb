require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < Minitest::Test

  def setup
     pirhana = Fish.new("Pirhana")
     goldfish = Fish.new("Goldfish")

     @river = River.new("Clyde", [ pirhana, goldfish ])

  end

  def test_river_exists()
    assert_equal(River, @river.class)
  end

  def test_fish()
    fish = @river.get_fish()
    assert_equal("Pirhana", fish.name)
  end

  def test_fish_count()
    assert_equal(2, @river.fish_count())
  end

end
