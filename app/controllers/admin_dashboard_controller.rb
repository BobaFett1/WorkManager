class AdminDashboardController < ApplicationController
  def index
    if current_user.email != "test3@isp.de"
      redirect_to access_denied_index_path
    end
  end
end
