require 'test_helper'

class CommitmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get commitments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get commitments_destroy_url
    assert_response :success
  end

end
