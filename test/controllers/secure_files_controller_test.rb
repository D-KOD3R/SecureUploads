require 'test_helper'

class SecureFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get secure_files_index_url
    assert_response :success
  end

  test "should get new" do
    get secure_files_new_url
    assert_response :success
  end

  test "should get create" do
    get secure_files_create_url
    assert_response :success
  end

  test "should get destroy" do
    get secure_files_destroy_url
    assert_response :success
  end

end
