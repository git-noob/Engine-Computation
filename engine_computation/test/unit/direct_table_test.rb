require 'test_helper'

class DirectTableTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert DirectTable.new.valid?
  end
end
