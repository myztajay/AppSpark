require 'test_helper'

class UserskillsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get userskills_new_url
    assert_response :success
  end

  test "should get create" do
    get userskills_create_url
    assert_response :success
  end

  test "should get destroy" do
    get userskills_destroy_url
    assert_response :success
  end

end
