class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user_id = current_user.id
    @costume.save!
    redirect_to costume_path(@costume)
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :description, :price, :size, :city)
  end



end
