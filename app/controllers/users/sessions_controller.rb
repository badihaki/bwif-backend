# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end
  
  def new
    if user_signed_in?
      render json: current_user, status: :ok
    else
      render json:{error_message: 'No logged in user'}, status: :unauthorized
    end
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  
  def destroy
    if user_signed_in?
      sign_out :current_user
      render json: {message: 'logged out successfully', current_user: current_user}, status: :ok
    else
      render json: {message: "not logged in??"}, status: :not_found
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private
  def respond_with( resource, _opts={} )
    render json: {
      status: {code: 200, message: "Logged in successfully"},
      data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def respond_to_on_destroy
    if(current_user)
      render json: {
        status: 200,
        message: "Logged out successfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session"
      }, status: :unauthorized
    end
  end

end
