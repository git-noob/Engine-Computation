require 'test_helper'

class BneTableTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BneTable.new.valid?
  end
end
