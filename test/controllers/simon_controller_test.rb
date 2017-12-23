require 'test_helper'

class SimonControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get simon_input_url
    assert_response :success
  end

  test "should get view" do
    get simon_view_url
    assert_response :success
  end

end
