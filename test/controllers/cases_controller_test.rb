require 'test_helper'

class CasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cases_new_url
    assert_response :success
  end

  test "should get update" do
    get cases_update_url
    assert_response :success
  end

  test "should get edit" do
    get cases_edit_url
    assert_response :success
  end

end
