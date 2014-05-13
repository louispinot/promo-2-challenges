class PostcardsController < ApplicationController
  def index
    @postcards = Postcards.all
  end

  def show
    @postcard = Postcards.find(params[:id])
  end

  def new
    @postcard = Postcards.new
  end

  def create
    postcard_params= params.require(:postcard).permit(:author, :picture_url, :message)
    postcard = Postcards.create(postcard_params)

    redirect_to postcard_path(postcard)
  end

end