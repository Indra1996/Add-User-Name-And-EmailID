require 'test_helper'

class ControlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @control = controls(:one)
  end

  test "should get index" do
    get controls_url, as: :json
    assert_response :success
  end

  test "should create control" do
    assert_difference('Control.count') do
      post controls_url, params: { control: { email: @control.email, name: @control.name } }, as: :json
    end

    assert_response 201
  end

  test "should show control" do
    get control_url(@control), as: :json
    assert_response :success
  end

  test "should update control" do
    patch control_url(@control), params: { control: { email: @control.email, name: @control.name } }, as: :json
    assert_response 200
  end

  test "should destroy control" do
    assert_difference('Control.count', -1) do
      delete control_url(@control), as: :json
    end

    assert_response 204
  end
end
