class HomeController < ApplicationController
  def index
    redirect_to('/users/sign_in') and return unless user_signed_in?    

    @stages = Stage.all
  end
end
