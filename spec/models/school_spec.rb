require 'rails_helper'

RSpec.describe School, type: :model do
it { should have_many (:students) }
it { should have_one_attached (:logo) }

end
