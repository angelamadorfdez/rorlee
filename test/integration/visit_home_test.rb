require "test_helper"

class VisitHomeTest < ActionDispatch::IntegrationTest
  
  def test_visit_homepage
    get root_path
    assert_response :success
  end

  def test_visit_homepage
    visit root_path
    assert_equal 200, page.status_code
    assert has_content?("RoR Lee")
  end

end
