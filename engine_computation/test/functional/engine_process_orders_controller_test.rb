require 'test_helper'

class EngineProcessOrdersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => EngineProcessOrder.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    EngineProcessOrder.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    EngineProcessOrder.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to engine_process_order_url(assigns(:engine_process_order))
  end

  def test_edit
    get :edit, :id => EngineProcessOrder.first
    assert_template 'edit'
  end

  def test_update_invalid
    EngineProcessOrder.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EngineProcessOrder.first
    assert_template 'edit'
  end

  def test_update_valid
    EngineProcessOrder.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EngineProcessOrder.first
    assert_redirected_to engine_process_order_url(assigns(:engine_process_order))
  end

  def test_destroy
    engine_process_order = EngineProcessOrder.first
    delete :destroy, :id => engine_process_order
    assert_redirected_to engine_process_orders_url
    assert !EngineProcessOrder.exists?(engine_process_order.id)
  end
end
