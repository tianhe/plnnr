class V1::StagesController < ApplicationController
  def index
    @stages = Stage.all.to_a
  end
end
