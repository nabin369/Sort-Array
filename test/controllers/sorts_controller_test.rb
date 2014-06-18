require 'test_helper'

class SortsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
