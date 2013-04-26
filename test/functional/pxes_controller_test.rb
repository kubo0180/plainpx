require 'test_helper'

class PxesControllerTest < ActionController::TestCase
  setup do
    @px = pxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create px" do
    assert_difference('Px.count') do
      post :create, px: { description: @px.description, gmaps: @px.gmaps, image_url: @px.image_url, latitude: @px.latitude, longitude: @px.longitude, title: @px.title, user_name: @px.user_name }
    end

    assert_redirected_to px_path(assigns(:px))
  end

  test "should show px" do
    get :show, id: @px
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @px
    assert_response :success
  end

  test "should update px" do
    put :update, id: @px, px: { description: @px.description, gmaps: @px.gmaps, image_url: @px.image_url, latitude: @px.latitude, longitude: @px.longitude, title: @px.title, user_name: @px.user_name }
    assert_redirected_to px_path(assigns(:px))
  end

  test "should destroy px" do
    assert_difference('Px.count', -1) do
      delete :destroy, id: @px
    end

    assert_redirected_to pxes_path
  end
end
