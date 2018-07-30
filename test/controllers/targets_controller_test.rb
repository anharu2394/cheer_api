require 'test_helper'

class TargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @target = targets(:one)
  end

  test "should get index" do
    get targets_url, as: :json
    assert_response :success
  end

  test "should create target" do
    assert_difference('Target.count') do
      post targets_url, params: { target: { message_id: @target.message_id, user_id: @target.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show target" do
    get target_url(@target), as: :json
    assert_response :success
  end

  test "should update target" do
    patch target_url(@target), params: { target: { message_id: @target.message_id, user_id: @target.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy target" do
    assert_difference('Target.count', -1) do
      delete target_url(@target), as: :json
    end

    assert_response 204
  end
end
