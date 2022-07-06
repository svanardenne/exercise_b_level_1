class UsersController < ApplicationController
  # Returns user details
  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  # Returns universally unique identifier
  def show_id
    render json: { id: SecureRandom.uuid }
  end

  # Creates user and returns user json data
  def create
    @user = User.new(username: Faker::Internet.unique.username,
                     email: Faker::Internet.unique.email,
                     bio: Faker::Lorem.paragraph)
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: 400
    end
  end
end
