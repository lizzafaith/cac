
class ApplicationController < ActionController::Base

  protect_from_forgery
  
  include Mixin::AppHelper
  
  before_filter :set_action_name
  
end
