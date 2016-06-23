class Api::V1::FollowsController < ApplicationController

  def index
    @follows = Follow.all
  end


  def show
  end


  def new
  end

  def create
    @follow = Follow.new(follower_id: current_user.id, followee_id: params[:followee_id])
    @follow.save
    flash[:success] = "Follow created."
    redirect_to "/follows/"
  end

  def edit
  end

  def update
  end

  def destroy
      @follow = Follow.find_by(id: params[:id]).delete
      flash[:warning] = "follow Deleted"
      redirect_to "/follows"
  end

  def search
  end
end
