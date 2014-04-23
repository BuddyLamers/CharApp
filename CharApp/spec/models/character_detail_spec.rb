require 'spec_helper'

describe CharacterDetail do


    it { should validate_presence_of(:character_id) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }

end
