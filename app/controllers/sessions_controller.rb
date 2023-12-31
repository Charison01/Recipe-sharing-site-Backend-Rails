class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        render json: { message: 'Login successful', user: user }, status: :ok
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
end
  