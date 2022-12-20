require 'rails_helper'

RSpec.describe Student, type: :model do
  it { should belong_to (:stream)}
  it { should belong_to (:substream)}
  it { should belong_to (:school)}
  it { should have_one_attached (:photo)}

  it { should validate_presence_of(:surname)}
  it { should validate_presence_of(:other_names)}
  it { should validate_presence_of(:gender)}


describe 'name' do
 it 'joins surname and other names' do
  student = build(:student)
  expect(student.name).to eq "John Doe" 
 end
 

end



end
