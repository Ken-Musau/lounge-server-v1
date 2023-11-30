class ClientsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  skip_before_action :authorized, only: [:create, :index]

  # GET /clients
  def index
    clients = Client.all
    render json: clients
  end

  # POST /clients
  # def create
  #   client = Client.create!(client_params)
  #   render json: client, status: :created
  # end

  # def create
  #   @client = Client.create!(client_params)
  #   if @client.valid?
  #     @token = encode_token(client_id: @client.id)
  #     render json:{client: @client, jwt: @token} , status: :created
  #   else
  #     render json: { error: 'failed to create user' }, status: :unprocessable_entity
  #   end
  # end

  def profile
    render json: current_user, status: :accepted
  end

  def create
    @client = Client.create!(client_params)
    @token = encode_token(client_id: @client.id)
    render json:{client: @client, jwt: @token} , status: :created
  end



  def show
    client = Client.find_by(id: session[:client_id])
    if client
      render json: client
    else
      render json:{error: ["Not authorized"]}, status: :unauthorized
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
    params.permit(:username, :first_name, :last_name, :profile_picture, :password)
  end

  def render_not_found
    render json: { error: "Client not found"}, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages  }, status: :unprocessable_entity
  end
end
