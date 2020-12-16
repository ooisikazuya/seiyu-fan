class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
  end

  def create
  end

  def update
  end
end