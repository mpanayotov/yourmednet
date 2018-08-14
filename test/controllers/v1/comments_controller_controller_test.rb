require 'test_helper'

class V1::CommentsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get v1_comments_controller_create_url
    assert_response :success
  end

end
