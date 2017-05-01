require 'test_helper'

class Api::V1::PlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_players_index_url
    assert_response :success
  end

end
