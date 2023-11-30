class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @client = Client.find_by(username: params[:username])
    if @client && @client.authenticate(params[:password])
      token = encode_token({client_id: @client.id})
      render json: {client: @client, jwt:token}, status: :accepted
    else
      render json: {error: ["Invalid username or password"]}, status: :unauthorized
    end
  end
end
