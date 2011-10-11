require 'test_helper'

class BneTablesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => BneTable.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    BneTable.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    BneTable.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to bne_table_url(assigns(:bne_table))
  end

  def test_edit
    get :edit, :id => BneTable.first
    assert_template 'edit'
  end

  def test_update_invalid
    BneTable.any_instance.stubs(:valid?).returns(false)
    put :update, :id => BneTable.first
    assert_template 'edit'
  end

  def test_update_valid
    BneTable.any_instance.stubs(:valid?).returns(true)
    put :update, :id => BneTable.first
    assert_redirected_to bne_table_url(assigns(:bne_table))
  end

  def test_destroy
    bne_table = BneTable.first
    delete :destroy, :id => bne_table
    assert_redirected_to bne_tables_url
    assert !BneTable.exists?(bne_table.id)
  end
end
