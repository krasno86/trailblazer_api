require 'rails_helper'

RSpec.describe V1::Users::Sessions::Operation::Create do
  let(:valid_params) do
    {
        email: user.email,
        password: user.password,
    }
  end
  let(:user) { create(:user) }

  describe 'Success' do
    it "creates session" do
      op = V1::Users::Sessions::Operation::Create.(params: valid_params)

      expect(op[:tokens]).to include(:access)
      expect(op[:model]).to be_persisted
    end
  end
end
