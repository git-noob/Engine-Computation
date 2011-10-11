require 'test_helper'

class EngineProcessOrderTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert EngineProcessOrder.new.valid?
  end
end
