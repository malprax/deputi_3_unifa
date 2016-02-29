require 'test_helper'

class ScholarshipRegistrationsControllerTest < ActionController::TestCase
  setup do
    @scholarship_registration = scholarship_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scholarship_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scholarship_registration" do
    assert_difference('ScholarshipRegistration.count') do
      post :create, scholarship_registration: { address: @scholarship_registration.address, date_of_birth: @scholarship_registration.date_of_birth, name: @scholarship_registration.name, religion: @scholarship_registration.religion }
    end

    assert_redirected_to scholarship_registration_path(assigns(:scholarship_registration))
  end

  test "should show scholarship_registration" do
    get :show, id: @scholarship_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scholarship_registration
    assert_response :success
  end

  test "should update scholarship_registration" do
    patch :update, id: @scholarship_registration, scholarship_registration: { address: @scholarship_registration.address, date_of_birth: @scholarship_registration.date_of_birth, name: @scholarship_registration.name, religion: @scholarship_registration.religion }
    assert_redirected_to scholarship_registration_path(assigns(:scholarship_registration))
  end

  test "should destroy scholarship_registration" do
    assert_difference('ScholarshipRegistration.count', -1) do
      delete :destroy, id: @scholarship_registration
    end

    assert_redirected_to scholarship_registrations_path
  end
end
