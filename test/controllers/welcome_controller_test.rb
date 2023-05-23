require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  
  def test_visit_homepage
    visit root_path
    # get root_path
    assert_response :success
  end

end
