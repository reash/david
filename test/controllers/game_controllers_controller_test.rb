require "test_helper"

class GameControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_controller = game_controllers(:one)
  end

  test "should get index" do
    get game_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_game_controller_url
    assert_response :success
  end

  test "should create game_controller" do
    assert_difference("GameController.count") do
      post game_controllers_url, params: { game_controller: { comment: @game_controller.comment, go: @game_controller.go } }
    end

    assert_redirected_to game_controller_url(GameController.last)
  end

  test "should show game_controller" do
    get game_controller_url(@game_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_controller_url(@game_controller)
    assert_response :success
  end

  test "should update game_controller" do
    patch game_controller_url(@game_controller), params: { game_controller: { comment: @game_controller.comment, go: @game_controller.go } }
    assert_redirected_to game_controller_url(@game_controller)
  end

  test "should destroy game_controller" do
    assert_difference("GameController.count", -1) do
      delete game_controller_url(@game_controller)
    end

    assert_redirected_to game_controllers_url
  end
end
