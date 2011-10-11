require 'test_helper'

class RegulatoryFeesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => RegulatoryFee.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    RegulatoryFee.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RegulatoryFee.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to regulatory_fee_url(assigns(:regulatory_fee))
  end

  def test_edit
    get :edit, :id => RegulatoryFee.first
    assert_template 'edit'
  end

  def test_update_invalid
    RegulatoryFee.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RegulatoryFee.first
    assert_template 'edit'
  end

  def test_update_valid
    RegulatoryFee.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RegulatoryFee.first
    assert_redirected_to regulatory_fee_url(assigns(:regulatory_fee))
  end

  def test_destroy
    regulatory_fee = RegulatoryFee.first
    delete :destroy, :id => regulatory_fee
    assert_redirected_to regulatory_fees_url
    assert !RegulatoryFee.exists?(regulatory_fee.id)
  end
end
