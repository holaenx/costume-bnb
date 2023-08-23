class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @costumes = Costume.all
  end

  def profile
    @rents = current_user.rents
    @costumes = current_user.costumes
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to profile_path, status: :see_other
  end

  # def params_rent
  #   params.require(:costume).permit(:rent_id, :id)
  # end
end
