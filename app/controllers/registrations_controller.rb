class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confrimation)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confrimation, :current_password)
  end
end