class WelcomeController < ApplicationController
  before_action :do_whatever


  def index
  end

  def do_whatever
    if current_user.email == "test3@isp.de"
      # REDIRECT TO ADMIN DASHBOARD IF ADMIN LOGGED IN
      redirect_to admin_dashboard_index_path
    else
      redirect_to user_dashboard_index_path
    end
  end
end
