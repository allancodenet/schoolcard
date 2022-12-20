require 'rails_helper'

RSpec.describe Stream, type: :model do
 it { should have_many(:substreams).dependent (:destroy) }
 it { should have_many(:students) }
end
