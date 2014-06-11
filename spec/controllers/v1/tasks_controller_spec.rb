require 'spec_helper'

describe V1::TasksController do
  render_views

  describe "GET 'index'" do    
    let!(:task_1) { FactoryGirl.create(:task, position: 0) }
    let!(:task_2) { FactoryGirl.create(:task, position: 1) }
    let!(:main_action) { FactoryGirl.create(:main_action) }
    it "returns http success" do
      get :index
      json = JSON.parse(response.body).with_indifferent_access
      json[:tasks].should == [
        { id: task_1.id, name: task_1.name, description: task_1.description, position: 0, main_action_ids: [] }.with_indifferent_access, 
        { id: task_2.id, name: task_2.name, description: task_2.description, position: 1, main_action_ids: [] }.with_indifferent_access ]
      json[:main_actions].should == []
    end
  end
end
