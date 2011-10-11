require 'test_helper'

class LineofBusinessTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert LineofBusiness.new.valid?
  end
end
