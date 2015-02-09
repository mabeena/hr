require 'test_helper'

class EmployeeEducationsControllerTest < ActionController::TestCase
  setup do
    @employee_education = employee_educations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_educations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_education" do
    assert_difference('EmployeeEducation.count') do
      post :create, employee_education: { education_id: @employee_education.education_id, employee_id: @employee_education.employee_id }
    end

    assert_redirected_to employee_education_path(assigns(:employee_education))
  end

  test "should show employee_education" do
    get :show, id: @employee_education
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_education
    assert_response :success
  end

  test "should update employee_education" do
    patch :update, id: @employee_education, employee_education: { education_id: @employee_education.education_id, employee_id: @employee_education.employee_id }
    assert_redirected_to employee_education_path(assigns(:employee_education))
  end

  test "should destroy employee_education" do
    assert_difference('EmployeeEducation.count', -1) do
      delete :destroy, id: @employee_education
    end

    assert_redirected_to employee_educations_path
  end
end
