require 'test_helper'

class HometownsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hometowns_index_url
    assert_response :success
  end

  test "should get show" do
    get hometowns_show_url
    assert_response :success
  end
end
