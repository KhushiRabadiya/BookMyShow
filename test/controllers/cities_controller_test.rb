require "test_helper"

class CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cities_index_url
    assert_response :success
  end

  test "should get new" do
    get cities_new_url
    assert_response :success
  end

  test "should get edit" do
    get cities_edit_url
    assert_response :success
  end
end
