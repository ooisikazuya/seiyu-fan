require 'test_helper'

class CommunityControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get community_edit_url
    assert_response :success
  end
  
  test "should get list" do
    get community_edit_url
    assert_response :success
  end

end
