require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  
  def test_visit_homepage
    get root_path
    assert_response :success
  end

end
