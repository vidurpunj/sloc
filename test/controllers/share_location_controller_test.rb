require 'test_helper'

class ShareLocationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get share_location_index_url
    assert_response :success
  end

end
