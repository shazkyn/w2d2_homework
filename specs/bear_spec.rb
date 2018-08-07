require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class Beartest < MiniTest::Test

  def setup
    @bear = Bear.new("Arnie", "Grizzly")
    @fish = Fish.new("Guppy")
    @river2 = River.new("Deveron", [@fish])
  end

  def test_bear()
    assert_equal("Arnie", @bear.name)
    assert_equal("Grizzly", @bear.type)
    assert_equal([], @bear.stomach)
  end

  def test_bear_fishing()
    @bear.go_fish(@river2)
    assert_equal([@fish], @bear.stomach)
  end

  def test_bear_roar
    assert_equal("Grrrrr!", @bear.roar())
  end

  def test_food_count()
    assert_equal(0, @bear.food_count())
    @bear.go_fish(@river2)
    assert_equal(1, @bear.food_count())
  end

end
