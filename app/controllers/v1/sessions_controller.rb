class V1::SessionsController < ApplicationController
  def destroy
    sign_out current_user
    render nothing: true
  end
end
