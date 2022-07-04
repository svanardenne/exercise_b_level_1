class UsersController < ApplicationController
  # Returns user details
  def show; end

  # Returns universally unique identifier
  def show_id; end

  # Creates user
  def create
    @user = User.new(username: 'Shaun',
                     email: 's.vanardenne@gmail.com',
                     bio: 'blah blah')
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: 400
    end
  end
end
