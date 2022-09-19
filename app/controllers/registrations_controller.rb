class RegistrationsController < Devise::RegistrationsController
  # Overwrites standard devise params to accept username
  private
    def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def acount_update_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
    end
end