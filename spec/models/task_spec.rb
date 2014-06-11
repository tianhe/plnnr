require 'spec_helper'

describe Task do
  it { should validate_presence_of(:stage_id) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:position) }

  it { should belong_to(:stage) }
  it { should have_many(:actions) }
end
