class Users::SessionsController < Devise::SessionsController

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to name_lists_path(current_user),notice: 'guestuserでログインしました。'
  end
end