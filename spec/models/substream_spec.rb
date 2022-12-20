require 'rails_helper'

RSpec.describe Substream, type: :model do
  it { should belong_to(:stream) }
  it { should have_many(:students) }

  it { should validate_presence_of(:name) }
 
end
