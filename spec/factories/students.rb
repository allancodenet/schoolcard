FactoryBot.define do
  factory :student do
    surname { "MyString" }
    other_names { "MyString" }
    adm_no { "MyString" }
    dob { "2022-10-25" }
    index_no { 1 }
    upi { "MyString" }
    kcpe_yr { 1 }
    stream { nil }
    substream { nil }
  end
end
