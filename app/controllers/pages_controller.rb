class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @costumes = Costume.all
    if params[:query].present?
      query_search = "name OR description OR city ILIKE ?"
      @costumes = @costumes.where(query_search, query: "%#{params[:query]}")
    end
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

  def edit

  end
  # def params_rent
  #   params.require(:costume).permit(:rent_id, :id)
  # end
end
