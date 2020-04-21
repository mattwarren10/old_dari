require 'test_helper'

class SentencesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sentences_new_url
    assert_response :success
  end

  test "should get create" do
    get sentences_create_url
    assert_response :success
  end

  test "should get update" do
    get sentences_update_url
    assert_response :success
  end

  test "should get edit" do
    get sentences_edit_url
    assert_response :success
  end

  test "should get delete" do
    get sentences_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get sentences_destroy_url
    assert_response :success
  end

  test "should get index" do
    get sentences_index_url
    assert_response :success
  end

  test "should get show" do
    get sentences_show_url
    assert_response :success
  end

end
