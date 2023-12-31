class UsersController < ApplicationController
    def create
        user = User.new(user_params)
        if user.save
            render json: user.slice(:id, :username, :email), status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        if current_user.update(user_params)
          render json: current_user, status: :ok
        else
          render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
        end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
  