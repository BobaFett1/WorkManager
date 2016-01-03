class AdminDashboardController < ApplicationController
  def index
    if current_user.IsAdmin == false
      redirect_to access_denied_index_path
    end
  end
end
