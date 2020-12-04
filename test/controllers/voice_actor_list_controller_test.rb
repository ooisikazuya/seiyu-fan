require 'test_helper'

class VoiceActorListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get voice_actor_list_index_url
    assert_response :success
  end

end
