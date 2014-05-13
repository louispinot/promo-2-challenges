class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def list
    @users = User.all
  end

  def new
    @new_user = User.new
  end

  def create
    user_params= params.require(:user).permit(:name, :picture_url, :description)
    ## user_params = {"name"=>"Bob l'Ancien", "picture_url"=>"www.legifhurlant.com", "description"=>"Hello world\r\n"}

    new_user = User.create(user_params)

    redirect_to show_user_path(id: new_user.id)
    #redirect_to show_user_path(new_user)
  end
end
