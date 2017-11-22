class OwnersController < ApplicationController
  layout 'menu.html.erb'

  def index
    @welcome = Welcome.where(house_id: current_user.id)
  end

  def create
    capacity = params[:capacity]
    @owner = Owner.new
    @owner.name = params[:owner][:name]
    @owner.capacity = capacity
    @owner.news = params[:owner][:news]
    @owner.owner = current_user.name
    @owner.owner_id = current_user.id
    @owner.save

    redirect_to welcomes_path
  end

  def show
  end

  def new
    @owner = Owner.new
  end

  def edit
    @owner = Owner.find(params[:id])
    @welcome = Welcome.new
  end

  def update
  end

  def destroy
  end

  def mypage
  end

  def myhouse
  end

  def confirmation
  end
end
