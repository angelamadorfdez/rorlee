require "application_system_test_case"

class VisitHomeSystemTest < ApplicationSystemTestCase

  test "visit homepage" do
    visit root_path
    assert has_content?("RoR Lee")
  end

end
