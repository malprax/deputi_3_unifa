require 'test_helper'

class ScholarshipSuccessesControllerTest < ActionController::TestCase
  setup do
    @scholarship_success = scholarship_successes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scholarship_successes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scholarship_success" do
    assert_difference('ScholarshipSuccess.count') do
      post :create, scholarship_success: { address: @scholarship_success.address, date_of_birth: @scholarship_success.date_of_birth, name: @scholarship_success.name, religion: @scholarship_success.religion }
    end

    assert_redirected_to scholarship_success_path(assigns(:scholarship_success))
  end

  test "should show scholarship_success" do
    get :show, id: @scholarship_success
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scholarship_success
    assert_response :success
  end

  test "should update scholarship_success" do
    patch :update, id: @scholarship_success, scholarship_success: { address: @scholarship_success.address, date_of_birth: @scholarship_success.date_of_birth, name: @scholarship_success.name, religion: @scholarship_success.religion }
    assert_redirected_to scholarship_success_path(assigns(:scholarship_success))
  end

  test "should destroy scholarship_success" do
    assert_difference('ScholarshipSuccess.count', -1) do
      delete :destroy, id: @scholarship_success
    end

    assert_redirected_to scholarship_successes_path
  end
end
