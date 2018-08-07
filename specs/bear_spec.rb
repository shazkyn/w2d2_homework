require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class Beartest < MiniTest::Test

  def setup
    @bear = Bear.new("Arnie", "Grizzly")
  end

  def test_bear()
    assert_equal("Arnie", @bear.name)
    assert_equal("Grizzly", @bear.type)
  end

end
