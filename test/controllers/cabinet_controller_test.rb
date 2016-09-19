require 'test_helper'

class CabinetControllerTest < ActionController::TestCase
  test "should get personal_page" do
    get :personal_page
    assert_response :success
  end

end
