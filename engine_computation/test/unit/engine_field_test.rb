require 'test_helper'

class EngineFieldTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert EngineField.new.valid?
  end
end
