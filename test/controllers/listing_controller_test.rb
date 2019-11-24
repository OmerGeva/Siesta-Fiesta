require 'test_helper'

class ListingControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get listing_show_url
    assert_response :success
  end

end
