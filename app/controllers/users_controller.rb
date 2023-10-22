class UsersController < ApplicationController
    before_action :authenticate, except: [:create, :login]

    def create
        user=User.new(user_params)
        
        if user.save 
            render json: { user: user, token: knock_and_create_token}
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:username, :email, :password, :profile_picture)
    end

    def knock_and_create_token
        Knock::AuthToken.new(payload: {sub: user.id}).token
    end
end
