require 'test_helper'

class EvaluationsControllerTest < ActionController::TestCase
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post :create, evaluation: { attitude: @evaluation.attitude, character: @evaluation.character, commrunication: @evaluation.commrunication, edate: @evaluation.edate, employee_id: @evaluation.employee_id, performance: @evaluation.performance, position_id: @evaluation.position_id, potential: @evaluation.potential, sdate: @evaluation.sdate }
    end

    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should show evaluation" do
    get :show, id: @evaluation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation
    assert_response :success
  end

  test "should update evaluation" do
    patch :update, id: @evaluation, evaluation: { attitude: @evaluation.attitude, character: @evaluation.character, commrunication: @evaluation.commrunication, edate: @evaluation.edate, employee_id: @evaluation.employee_id, performance: @evaluation.performance, position_id: @evaluation.position_id, potential: @evaluation.potential, sdate: @evaluation.sdate }
    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete :destroy, id: @evaluation
    end

    assert_redirected_to evaluations_path
  end
end
