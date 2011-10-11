require 'test_helper'

class DirectTablesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => DirectTable.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    DirectTable.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    DirectTable.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to direct_table_url(assigns(:direct_table))
  end

  def test_edit
    get :edit, :id => DirectTable.first
    assert_template 'edit'
  end

  def test_update_invalid
    DirectTable.any_instance.stubs(:valid?).returns(false)
    put :update, :id => DirectTable.first
    assert_template 'edit'
  end

  def test_update_valid
    DirectTable.any_instance.stubs(:valid?).returns(true)
    put :update, :id => DirectTable.first
    assert_redirected_to direct_table_url(assigns(:direct_table))
  end

  def test_destroy
    direct_table = DirectTable.first
    delete :destroy, :id => direct_table
    assert_redirected_to direct_tables_url
    assert !DirectTable.exists?(direct_table.id)
  end
end
