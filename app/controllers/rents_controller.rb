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
    if @rent.save!
      flash[:notice] = "Rent successfully created"
      redirect_to profile_path(current_user)
    else
      redirect_to new_costume_rent_path(@costume)
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to profile_path, status: :see_other
  end

  def edit
    @rent = Rent.find(params[:id])
    @costume = @rent.costume.id
  end

  def update
    @rent = Rent.find(params[:id])
    @rent.update(rent_params)
    redirect_to profile_path
  end

  private

  def rent_params
    params.require(:rent).permit(:begin_date, :end_date)
  end
end
