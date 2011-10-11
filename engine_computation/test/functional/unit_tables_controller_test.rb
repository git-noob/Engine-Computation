require 'test_helper'

class UnitTablesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => UnitTable.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    UnitTable.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UnitTable.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to unit_table_url(assigns(:unit_table))
  end

  def test_edit
    get :edit, :id => UnitTable.first
    assert_template 'edit'
  end

  def test_update_invalid
    UnitTable.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UnitTable.first
    assert_template 'edit'
  end

  def test_update_valid
    UnitTable.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UnitTable.first
    assert_redirected_to unit_table_url(assigns(:unit_table))
  end

  def test_destroy
    unit_table = UnitTable.first
    delete :destroy, :id => unit_table
    assert_redirected_to unit_tables_url
    assert !UnitTable.exists?(unit_table.id)
  end
end
