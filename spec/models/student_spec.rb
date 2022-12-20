require 'rails_helper'

RSpec.describe Student, type: :model do
  it { should belong_to (:stream)}
  it { should belong_to (:substream)}
  it { should belong_to (:school)}
  it { should have_one_attached (:photo)}

it { should validate_presence_of(:surname)}
it { should validate_presence_of(:other_names)}
it { should validate_presence_of(:gender)}


end
