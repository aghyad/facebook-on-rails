class RegistrationsController < Devise::RegistrationsController
  
  before _filter :user_params, only: {:create , :update, :destroy}
  
  
  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end
    
end
