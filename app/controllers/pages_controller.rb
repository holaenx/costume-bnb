class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @rents = current_user.rents
    @costumes = current_user.costumes
  end

  # def params_rent
  #   params.require(:costume).permit(:rent_id, :id)
  # end
end
