require "test_helper"

class Public::FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_friends_index_url
    assert_response :success
  end
end
