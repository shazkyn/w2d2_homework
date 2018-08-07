require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < Minitest::Test

  def setup
     @fish1 = Fish.new("Pirhana")
  end

  def test_fish_exists()
    assert_equal(Fish, @fish1.class)

  end


end
