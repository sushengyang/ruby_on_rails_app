require 'test_helper'

class LendingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lending_index_url
    assert_response :success
  end

end
