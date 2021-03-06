require 'spec_helper'

describe UserProfile do
  it { should belong_to(:user) }
  it { should validate_presence_of(:user_id) }
end
