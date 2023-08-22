class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @costumes = Costume.all
  end

  def profile
    @user = current_user
    @costumes = current_user.costumes
  end
end
