require 'test_helper'

class TechIdsControllerTest < ActionController::TestCase
  setup do
    @tech_id = tech_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tech_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tech_id" do
    assert_difference('TechId.count') do
      post :create, tech_id: @tech_id.attributes
    end

    assert_redirected_to tech_id_path(assigns(:tech_id))
  end

  test "should show tech_id" do
    get :show, id: @tech_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tech_id
    assert_response :success
  end

  test "should update tech_id" do
    put :update, id: @tech_id, tech_id: @tech_id.attributes
    assert_redirected_to tech_id_path(assigns(:tech_id))
  end

  test "should destroy tech_id" do
    assert_difference('TechId.count', -1) do
      delete :destroy, id: @tech_id
    end

    assert_redirected_to tech_ids_path
  end
end
