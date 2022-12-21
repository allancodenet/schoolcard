require 'rails_helper'

RSpec.describe "Cards", type: :request do
let(:user) {create(:user)}
  before {sign_in user}
  describe "GET /index" do
    it "returns http success" do
      get admin_cards_path
      expect(response).to be_successful
    end
  end

end
