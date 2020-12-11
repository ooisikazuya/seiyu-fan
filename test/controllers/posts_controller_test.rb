require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get voice_actors_index_url
    assert_response :success 
  end

  test "should get show" do
    get voice_actors_show_url
    assert_response :success
  end

  test "should get new" do
    get voice_actors_new_url
    assert_response :success
  end
end
