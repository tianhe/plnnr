require 'spec_helper'

describe V1::StagesController do
  render_views

  describe "GET 'index'" do    
    let!(:stage_1) { FactoryGirl.create(:stage, position: 0) }
    let!(:stage_2) { FactoryGirl.create(:stage, position: 1) }

    it "returns http success" do
      get :index
      json = JSON.parse(response.body).with_indifferent_access
      json[:stages].should == [{ id: stage_1.id, name: stage_1.name, description: stage_1.description, position: 0, task_ids: [] }.with_indifferent_access, 
        { id: stage_2.id, name: stage_2.name, description: stage_2.description, position: 1, task_ids: [] }.with_indifferent_access ]
    end
  end
end
