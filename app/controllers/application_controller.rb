class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  def custom
    @user = User.find(params[:id])
    @costumes = @user.costumes
  end
end
