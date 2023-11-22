class ClientsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  # GET /clients
  def index
    render json: Client.all
  end

  # POST /clients
  def create
    client = Client.create(client_params)
    render json: client, status: :created
  end

  # GET /clients/:id
  def show
    client = find_client
    render json: client
  end

  # PATCH /clients/:id

  def update
    client = find_client
    client.update(client_params)
    render json: client
  end

  private

  def find_client
    Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:username, :first_name, :last_name, :profile_picture, :password_digest)
  end

  def render_not_found
    render json: { error: "Client not found"}, status: :not_found
  end
end
