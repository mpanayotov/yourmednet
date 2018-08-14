require 'test_helper'

class V1::AnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get v1_answers_create_url
    assert_response :success
  end

end
