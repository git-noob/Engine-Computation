require 'test_helper'

class EngineFieldsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => EngineField.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    EngineField.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    EngineField.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to engine_field_url(assigns(:engine_field))
  end

  def test_edit
    get :edit, :id => EngineField.first
    assert_template 'edit'
  end

  def test_update_invalid
    EngineField.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EngineField.first
    assert_template 'edit'
  end

  def test_update_valid
    EngineField.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EngineField.first
    assert_redirected_to engine_field_url(assigns(:engine_field))
  end

  def test_destroy
    engine_field = EngineField.first
    delete :destroy, :id => engine_field
    assert_redirected_to engine_fields_url
    assert !EngineField.exists?(engine_field.id)
  end
end
