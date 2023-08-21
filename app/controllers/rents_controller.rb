class RentsController < ApplicationController
  def new
    @costume = Costume.find(params[:costume_id])
    @rent = Rent.new
  end

  def create
    @costume = Costume.find(params[:costume_id])
    @rent = Rent.new(rent_params)
    @rent.user = current_user
    @rent.costume = @costume
    @rent.save!
    redirect_to costume_path(@costume)
  end

  private

  def rent_params
    params.require(:rent).permit(:begin_date, :end_date)
  end
end
