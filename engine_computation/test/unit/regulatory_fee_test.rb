require 'test_helper'

class RegulatoryFeeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RegulatoryFee.new.valid?
  end
end
