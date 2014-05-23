require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get shohin" do
    get :shohin
    assert_response :success
  end

end
