require 'spec_helper'

describe UserTask do
  it { should belong_to(:user) }
  it { should belong_to(:task) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:task_id) }
end
