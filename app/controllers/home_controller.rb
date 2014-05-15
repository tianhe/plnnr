class HomeController < ApplicationController
  def index
    redirect_to('/users/sign_in') and return unless user_signed_in?    

    @stage = Stage.first
  end
end
