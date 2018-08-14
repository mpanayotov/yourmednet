require 'test_helper'

class V1::MedcaseControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get v1_medcase_controller_show_url
    assert_response :success
  end

  test "should get create" do
    get v1_medcase_controller_create_url
    assert_response :success
  end

end
