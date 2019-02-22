class RegistrationsController < Devise::RegistrationsController
    private

    def sign_up_params
        params.require(:user).permit(:name, :age, :dob, :height, :weight, :gender, :gym, :email, :password, :password_confirmation)
    end

    def account_update_params
        params.require(:user).permit(:name, :age, :dob, :height, :weight, :gender, :email, :gym, :password, :password_confirmation, :current_password)
    end
end
