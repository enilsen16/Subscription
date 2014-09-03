require 'test_helper'

class SubscriptonsControllerTest < ActionController::TestCase
  setup do
    @subscripton = subscriptons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subscriptons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subscripton" do
    assert_difference('Subscripton.count') do
      post :create, subscripton: { length: @subscripton.length, magazine_id: @subscripton.magazine_id, subscriber_id: @subscripton.subscriber_id }
    end

    assert_redirected_to subscripton_path(assigns(:subscripton))
  end

  test "should show subscripton" do
    get :show, id: @subscripton
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subscripton
    assert_response :success
  end

  test "should update subscripton" do
    patch :update, id: @subscripton, subscripton: { length: @subscripton.length, magazine_id: @subscripton.magazine_id, subscriber_id: @subscripton.subscriber_id }
    assert_redirected_to subscripton_path(assigns(:subscripton))
  end

  test "should destroy subscripton" do
    assert_difference('Subscripton.count', -1) do
      delete :destroy, id: @subscripton
    end

    assert_redirected_to subscriptons_path
  end
end
