require 'test_helper'

class LinkctrsControllerTest < ActionController::TestCase
  setup do
    @linkctr = linkctrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linkctrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linkctr" do
    assert_difference('Linkctr.count') do
      post :create, linkctr: { detail: @linkctr.detail, name: @linkctr.name, urlLink: @linkctr.urlLink }
    end

    assert_redirected_to linkctr_path(assigns(:linkctr))
  end

  test "should show linkctr" do
    get :show, id: @linkctr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @linkctr
    assert_response :success
  end

  test "should update linkctr" do
    patch :update, id: @linkctr, linkctr: { detail: @linkctr.detail, name: @linkctr.name, urlLink: @linkctr.urlLink }
    assert_redirected_to linkctr_path(assigns(:linkctr))
  end

  test "should destroy linkctr" do
    assert_difference('Linkctr.count', -1) do
      delete :destroy, id: @linkctr
    end

    assert_redirected_to linkctrs_path
  end
end
