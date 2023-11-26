class ClientSessionsController < ApplicationController

  def create
    client = Client.find_by(username: params[:username])
    if client&.authenticate(params[:password])
      session[:client_id] = client.id
      render json: client, status: :created
    else
      render json: {error: "invalid username or password"}, status: :unauthorized
    end
  end
end
