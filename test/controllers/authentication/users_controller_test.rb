require "test_helper"

class Authentication::UserControllerTest < ActionDispatch::IntegrationTest
  
  def test_get_new_user
    get new_authentication_user_url
    assert_response :success
  end

  def test_create_user
    assert_difference('User.count') do    
      post authentication_users_url, params: { user: { email: 'jose@ingenio.xyz', username: 'jose97', password: 'testme' } }
    end
  end

end
