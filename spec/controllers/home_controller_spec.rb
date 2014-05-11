require 'spec_helper'

describe HomeController do
  it 'should redirect if not logged in' do
    get :index
    response.should redirect_to '/users/sign_in'
  end

  it 'should render template if logged in' do
    login_user
    get :index
    response.should render_template('index')
  end
end
