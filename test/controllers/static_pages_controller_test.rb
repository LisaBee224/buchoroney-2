require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get locations" do
    get :locations
    assert_response :success
  end

  test "should get hotels" do
    get :hotels
    assert_response :success
  end

end
