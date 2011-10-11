require 'test_helper'

class LineofBusinessesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => LineofBusiness.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    LineofBusiness.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    LineofBusiness.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to lineof_business_url(assigns(:lineof_business))
  end

  def test_edit
    get :edit, :id => LineofBusiness.first
    assert_template 'edit'
  end

  def test_update_invalid
    LineofBusiness.any_instance.stubs(:valid?).returns(false)
    put :update, :id => LineofBusiness.first
    assert_template 'edit'
  end

  def test_update_valid
    LineofBusiness.any_instance.stubs(:valid?).returns(true)
    put :update, :id => LineofBusiness.first
    assert_redirected_to lineof_business_url(assigns(:lineof_business))
  end

  def test_destroy
    lineof_business = LineofBusiness.first
    delete :destroy, :id => lineof_business
    assert_redirected_to lineof_businesses_url
    assert !LineofBusiness.exists?(lineof_business.id)
  end
end
