require "application_system_test_case"

class GameControllersTest < ApplicationSystemTestCase
  setup do
    @game_controller = game_controllers(:one)
  end

  test "visiting the index" do
    visit game_controllers_url
    assert_selector "h1", text: "Game controllers"
  end

  test "should create game controller" do
    visit game_controllers_url
    click_on "New game controller"

    fill_in "Comment", with: @game_controller.comment
    fill_in "Go", with: @game_controller.go
    click_on "Create Game controller"

    assert_text "Game controller was successfully created"
    click_on "Back"
  end

  test "should update Game controller" do
    visit game_controller_url(@game_controller)
    click_on "Edit this game controller", match: :first

    fill_in "Comment", with: @game_controller.comment
    fill_in "Go", with: @game_controller.go
    click_on "Update Game controller"

    assert_text "Game controller was successfully updated"
    click_on "Back"
  end

  test "should destroy Game controller" do
    visit game_controller_url(@game_controller)
    click_on "Destroy this game controller", match: :first

    assert_text "Game controller was successfully destroyed"
  end
end
