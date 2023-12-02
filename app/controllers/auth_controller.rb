class AuthController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
  skip_before_action :authorized, only: [:login]

  def login
    @user = User.find_by!(username: login_params[:username])
    if @user&.authenticate(login_params[:password])
      @token = encode_token(user_id: @user.id)
      render json: {user: UserSerializer.new(@user), jwt: @token}, status: :accepted
    else
      render json: {message: ['Incorrect password']}, status: :unauthorized
    end
  end


  private

  def login_params
    params.permit(:username, :password)
  end

  def handle_record_not_found(e)
    render json: { message: ["User doesn't exist"] }, status: :unauthorized
end


end
