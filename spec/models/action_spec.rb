require 'spec_helper'

describe Action do
  it { should validate_presence_of(:task_id) }
  it { should validate_presence_of(:position) }
  it { should validate_presence_of(:description) }

  it { should belong_to(:task) }
end
