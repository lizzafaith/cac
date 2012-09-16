
class ApplicationController < ActionController::Base

  protect_from_forgery
  
  before_filter :set_action_name
  
  private
  
  def set_action_name
    begin
      @action_name = params[:controller].gsub('/', '_') + '_' + params[:action]
    rescue
    end
    
    begin
      @action_classes = params[:controller].gsub('/', '_')
    rescue
    end
    
  end
  
end
