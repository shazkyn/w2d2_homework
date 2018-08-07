require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
# require_relative("../fish.rb")

class RiverTest < Minitest::Test

  def setup
     @river = River.new("Clyde")
     # river2 = River.new("Deveron")
  end


  def test_river_exists()
    assert_equal(River, @river.class)
  end

end
