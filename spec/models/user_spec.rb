require 'rails_helper'

RSpec.describe User, type: :model do
 it { should have_one(:card_setting).dependent (:destroy) }
end
