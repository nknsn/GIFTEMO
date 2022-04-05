require "test_helper"

class Public::RecommendGiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_recommend_gifts_index_url
    assert_response :success
  end

  test "should get show" do
    get public_recommend_gifts_show_url
    assert_response :success
  end
end
