require 'test_helper'

class ShirtSizesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
