class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, jwt:token}, status: :accepted
    else
      error_message = @user ? "Invalid password" : "Invalid username"
      render json: {error: [error_message]}, status: :unauthorized
    end
  end

  def user_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.permit(:username, :password)
  end
end
