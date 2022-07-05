class UsersController < ApplicationController
  # import Faker for random user generation
  require 'faker'
  # Returns user details
  def show; end

  # Returns universally unique identifier
  def show_id; end

  # Creates user
  def create
    @user = User.new(username: Faker::Internet.username,
                     email: Faker::Internet.email,
                     bio: Faker::Lorem.paragraph)
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: 400
    end
  end
end
