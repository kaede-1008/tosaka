class WelcomesController < ApplicationController
  before_action :authenticate_user!, only: :index
  before_action :set_owner, only: [:edit]
  layout "menu.html.erb"

  def index
    @owner = Owner.all
  end

  def create
    @welcome = Welcome.new
    @welcome.name = current_user.name
    @welcome.check_in = params[:welcome][:check_in]
    @welcome.check_out = params[:welcome][:check_out]
    @welcome.souvenir = params[:welcome][:souvenir]
    @welcome.house_id = params[:welcome][:owner_id]
    @welcome.save

    redirect_to welcomes_path
  end

  def show
  end

  def new
  end

  def edit
    @welcome = Welcome.new
  end

  def update
  end

  def destroy
  end

  private
  def set_owner
    @owner = Owner.find(params[:id])
  end

  def set_welcome
    @welcome = Welcome.find(params[:id])
  end
end
