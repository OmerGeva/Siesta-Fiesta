require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get listings_index_url
    assert_response :success
  end

  # test "the truth" do
  #   assert true
  # end

end
