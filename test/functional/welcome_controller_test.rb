
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
  
  
  
  test 'get ruby on rails hosting' do
    get :hosting
    assert_response :success
    assert_template :hosting
  end
  
end
