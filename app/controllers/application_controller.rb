class ApplicationController < ActionController::Base

  before_action :init_nav
  
  def init_nav
    @sections = Section.all
  end

end
