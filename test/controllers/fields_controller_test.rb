require 'test_helper'

class FieldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fields_index_url
    assert_response :success
  end

  test "should get show" do
    get fields_show_url
    assert_response :success
  end

  test "should get new" do
    get fields_new_url
    assert_response :success
  end

  test "should get create" do
    get fields_create_url
    assert_response :success
  end

  test "should get edit" do
    get fields_edit_url
    assert_response :success
  end

  test "should get update" do
    get fields_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fields_destroy_url
    assert_response :success
  end

end
