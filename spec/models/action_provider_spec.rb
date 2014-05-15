require 'spec_helper'

describe ActionProvider do
  it { should belong_to(:action) }
  it { should belong_to(:provider) }

  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:action_id) }
  it { should validate_presence_of(:provider_id) }
end
