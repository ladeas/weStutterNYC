require 'test_helper'

class RecapsControllerTest < ActionController::TestCase
  setup do
    @recap = recaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recap" do
    assert_difference('Recap.count') do
      post :create, recap: { author_id: @recap.author_id, body: @recap.body, title: @recap.title }
    end

    assert_redirected_to recap_path(assigns(:recap))
  end

  test "should show recap" do
    get :show, id: @recap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recap
    assert_response :success
  end

  test "should update recap" do
    patch :update, id: @recap, recap: { author_id: @recap.author_id, body: @recap.body, title: @recap.title }
    assert_redirected_to recap_path(assigns(:recap))
  end

  test "should destroy recap" do
    assert_difference('Recap.count', -1) do
      delete :destroy, id: @recap
    end

    assert_redirected_to recaps_path
  end
end
