require 'rails_helper'

RSpec.describe CardSetting, type: :model do
  it { should belong_to(:user) }
end
