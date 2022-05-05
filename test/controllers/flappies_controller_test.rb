require "test_helper"

class FlappiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flappy = flappies(:one)
  end

  test "should get index" do
    get flappies_url, as: :json
    assert_response :success
  end

  test "should create flappy" do
    assert_difference("Flappy.count") do
      post flappies_url, params: { flappy: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show flappy" do
    get flappy_url(@flappy), as: :json
    assert_response :success
  end

  test "should update flappy" do
    patch flappy_url(@flappy), params: { flappy: {  } }, as: :json
    assert_response :success
  end

  test "should destroy flappy" do
    assert_difference("Flappy.count", -1) do
      delete flappy_url(@flappy), as: :json
    end

    assert_response :no_content
  end
end
