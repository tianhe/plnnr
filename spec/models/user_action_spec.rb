require 'spec_helper'

describe UserAction do
  it { should belong_to(:user) }
  it { should belong_to(:action) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:action_id) }
end
