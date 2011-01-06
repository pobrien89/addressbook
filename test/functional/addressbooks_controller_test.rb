require File.dirname(__FILE__) + '/../test_helper'

class AddressbooksControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:addressbooks)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_addressbook
    assert_difference('Addressbook.count') do
      post :create, :addressbook => { }
    end

    assert_redirected_to addressbook_path(assigns(:addressbook))
  end

  def test_should_show_addressbook
    get :show, :id => addressbooks(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => addressbooks(:one).id
    assert_response :success
  end

  def test_should_update_addressbook
    put :update, :id => addressbooks(:one).id, :addressbook => { }
    assert_redirected_to addressbook_path(assigns(:addressbook))
  end

  def test_should_destroy_addressbook
    assert_difference('Addressbook.count', -1) do
      delete :destroy, :id => addressbooks(:one).id
    end

    assert_redirected_to addressbooks_path
  end
end
