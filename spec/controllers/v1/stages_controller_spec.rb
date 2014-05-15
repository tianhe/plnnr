require 'spec_helper'

describe V1::StagesController do
  render_views

  describe "GET 'index'" do    
    let(:stage_1) { create(:stage, position: 0) }
    let(:stage_2) { create(:stage, postiion: 1) }

    it "returns http success" do
      get :index
      json = JSON.parse(response.body)
      json.should == [{ name: stage_1.name, description: stage_1.description, position: 0 }.with_indifferent_access, 
        { name: stage_2.name, description: stage_2.description, position: 1 }.with_indifferent_access ]
    end
  end
end
