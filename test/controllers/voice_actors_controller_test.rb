require 'test_helper'

class VoiceActorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get voice_actors_index_url
    assert_response :success
  end

end
