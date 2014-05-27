require 'spec_helper'

describe Task do
  it { should validate_presence_of(:stage_id) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:position) }

  it { should belong_to(:stage) }
  it { should have_many(:actions) }
  it { should have_many(:main_actions) }
  it { should have_many(:feedback_actions) }
end
