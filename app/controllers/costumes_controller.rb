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

  def edit
    @costume = Costume.find(params[:id])
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user_id = current_user.id
    @costume.save!
    redirect_to costume_path(@costume)
  end

  def update
    @costume = Costume.find(params[:id])
    @costume.update(costume_params)
    redirect_to costume_path(@costume)
  end

  def destroy
    @costume= Costume.find(params[:id])
    # @rents = @costume.rents
    # @rents.destroy
    @costume.destroy
    redirect_to costumes_path, status: :see_other
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :description, :price, :size, :city, photos: [])
  end
end
