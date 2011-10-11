require 'test_helper'

class ComputationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Computation.first
    assert_template 'show'
  end
end
