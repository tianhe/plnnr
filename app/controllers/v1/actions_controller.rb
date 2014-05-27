class V1::ActionsController < ApplicationController
  def index
    @action = Action.all
    render json: @actions
  end
end
