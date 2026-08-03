class UserController < ApplicationController
  def register
    user = User.new(create_register_params)
    if user.save
      render json: { message: "Registration successful" }, status: :ok
    else
      render json: { error: user.errors }, status: :unprocessable_entity
    end
  end

  private def create_register_params
    params.permit(:email_address, :password)
  end
end
