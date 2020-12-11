require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get voice_actors_new_url
    assert_response :success
  end
end
