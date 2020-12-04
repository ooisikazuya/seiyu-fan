require 'test_helper'

class VoiceActorHometownControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get voice_actor_hometown_list_url
    assert_response :success
  end
  
  test "should get index" do
    get voice_actor_hometown_list_url
    assert_response :success
  end

end
