class ClientsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  # GET /clients
  def index
    clients = Client.all
    render json: clients
  end

  # POST /clients
  def create
    client = Client.create!(client_params)
    render json: client, status: :created
  end

  # GET /clients/:id
  # def show
  #   client = find_client
  #   render json: client
  # end

  def show
    client = Client.find_by(id: session[:client_id])
    if client
      render json: client
    else
      render json:{error: "Not authorized"}, status: :unauthorized
    end
  end

  # PATCH /clients/:id

  def update
    client = find_client
    client.update!(client_params)
    render json: client
  end

  # DELETE /clients/:id

  def destroy
    client = find_client
    client.destroy
    head :no_content
  end

  private

  # Find client
  def find_client
    Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:username, :first_name, :last_name, :profile_picture, :password_digest)
  end

  def render_not_found
    render json: { error: "Client not found"}, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages  }, status: :unprocessable_entity
  end
end
