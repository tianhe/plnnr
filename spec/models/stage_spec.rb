require 'spec_helper'

describe Stage do
  it { should have_many(:tasks) }
end
