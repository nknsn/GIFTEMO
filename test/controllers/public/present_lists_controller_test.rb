require "test_helper"

class Public::PresentListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_present_lists_index_url
    assert_response :success
  end

  test "should get new" do
    get public_present_lists_new_url
    assert_response :success
  end

  test "should get create" do
    get public_present_lists_create_url
    assert_response :success
  end

  test "should get edit" do
    get public_present_lists_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_present_lists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_present_lists_destroy_url
    assert_response :success
  end
end
