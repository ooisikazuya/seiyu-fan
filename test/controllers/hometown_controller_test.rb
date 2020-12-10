require 'test_helper'

class HometownControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hometown_index_url
    assert_response :success
  end

  test "should get show" do
    get hometown_show_url
    assert_response :success
  end
end
