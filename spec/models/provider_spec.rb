require 'spec_helper'

describe Provider do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:url) }
end
