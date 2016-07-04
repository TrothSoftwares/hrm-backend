require 'test_helper'

class LeaverollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leaveroll = leaverolls(:one)
  end

  test "should get index" do
    get leaverolls_url, as: :json
    assert_response :success
  end

  test "should create leaveroll" do
    assert_difference('Leaveroll.count') do
      post leaverolls_url, params: { leaveroll: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show leaveroll" do
    get leaveroll_url(@leaveroll), as: :json
    assert_response :success
  end

  test "should update leaveroll" do
    patch leaveroll_url(@leaveroll), params: { leaveroll: {  } }, as: :json
    assert_response 200
  end

  test "should destroy leaveroll" do
    assert_difference('Leaveroll.count', -1) do
      delete leaveroll_url(@leaveroll), as: :json
    end

    assert_response 204
  end
end
