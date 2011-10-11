require 'test_helper'

class UnitTableTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UnitTable.new.valid?
  end
end
