class Api::UsersController < ApplicationController
  def show; end

  def show_id; end

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
