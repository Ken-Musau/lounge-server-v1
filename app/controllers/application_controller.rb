class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, 'my_s3cr3t')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
      # or nil if we can't decode the token
      client_id = decoded_token[0]['client_id']
      @client = Client.find_by(id: client_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  # def hello_world
  #   session[:count] = (session[:count] || 0) + 1
  #   render json: { count: session[:count] }
  # end
end
