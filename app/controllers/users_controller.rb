class UsersController < ApplicationController

  def create
    user = User.create(
      username: params[:username],
      password: params[:password],
      bio: params[:bio],
      avatar: params[:avatar],
    )

    if user.valid?
      render json: user, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :bad_request
    end
  end


end
