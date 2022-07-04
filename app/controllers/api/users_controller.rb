class Api::UsersController < ApplicationController
  def create
    @user = User.new(username: 'Shaun', bio: 'blah blah')
    if @user.save
      render json: @user
    else
      render error: { error: 'Cannot create user.' }, status: 400
    end
  end
end
