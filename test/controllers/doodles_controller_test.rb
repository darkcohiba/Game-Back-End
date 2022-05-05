require "test_helper"

class DoodlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doodle = doodles(:one)
  end

  test "should get index" do
    get doodles_url, as: :json
    assert_response :success
  end

  test "should create doodle" do
    assert_difference("Doodle.count") do
      post doodles_url, params: { doodle: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show doodle" do
    get doodle_url(@doodle), as: :json
    assert_response :success
  end

  test "should update doodle" do
    patch doodle_url(@doodle), params: { doodle: {  } }, as: :json
    assert_response :success
  end

  test "should destroy doodle" do
    assert_difference("Doodle.count", -1) do
      delete doodle_url(@doodle), as: :json
    end

    assert_response :no_content
  end
end
