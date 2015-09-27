require 'minitest_helper'

class TestMoneysaber < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Moneysaber::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
