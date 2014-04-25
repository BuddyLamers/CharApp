require 'spec_helper'

describe Character do


  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:tagline) }
  it { should validate_presence_of(:name) }
  #needs to validate inclusion of "private" in T/F



end
