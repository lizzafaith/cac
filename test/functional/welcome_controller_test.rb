
require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  
  setup do
    ;
  end

  test 'get home' do
    get :home
    assert_response :success
    assert_template :home
  end
  
  test 'get privacy' do
    get :privacy
    assert_response :success
    assert_template :home
  end
  
  test 'get technology' do
    get :technology
    assert_response :success
    assert_template :home
  end
  
end
