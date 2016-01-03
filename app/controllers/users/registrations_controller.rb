class Users::RegistrationsController < Devise::RegistrationsController

  #
  # dm20160103 => Preventing the deletion and update of the superuser account!
  # see http://stackoverflow.com/questions/16249776/preventing-user-deletion-in-ruby-on-rails-and-devise-application
  def destroy
    if current_user.username == "SUPERUSER"
      redirect_to root_path, flash: { alert: "You can't delete this account" }
    else
      super
    end
  end

  def update
    if current_user.username == "SUPERUSER"
      redirect_to root_path, flash: { alert: "You can't edit this account" }
    else
      super
    end
  end
end