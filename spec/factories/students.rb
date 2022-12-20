FactoryBot.define do
  factory :student do
    surname { "John" }
    other_names { "Doe" }
    adm_no { "MyString" }
    dob { "2022-10-25" }
    index_no { 1 }
    upi { "MyString" }
    kcpe_yr { 1 }
    stream 
    substream 
    school 
    gender {'Male'}
  end
end
