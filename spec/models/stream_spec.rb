require 'rails_helper'

RSpec.describe Stream, type: :model do
 it { should have_many(:substreams).dependent (:destroy) }
 it { should have_many(:students) }

 it { should validate_presence_of(:name) }
 it { should validate_uniqueness_of(:name).ignoring_case_sensitivity}
end
