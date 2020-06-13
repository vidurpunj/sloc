require 'test_helper'

class LocationControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get location_add_url
    assert_response :success
  end

  test "should get share" do
    get location_share_url
    assert_response :success
  end

end
