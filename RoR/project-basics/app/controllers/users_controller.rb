class UsersController < ApplicationController
  def show
  end

  def list
    @users = User.all
  end

  def new
  end

  def create
  end
end
