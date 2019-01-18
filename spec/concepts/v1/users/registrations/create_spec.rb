require 'rails_helper'

RSpec.describe V1::Users::Registrations::Operation::Create do
  let(:user) { create(:user) }
  let(:valid_params) do
    {
        email: user.email,
        password: user.password,
        password_confirmation: user.password
    }
  end

  describe 'Success' do
    it "create new user" do
      op = V1::Users::Registrations::Operation::Create.(params: valid_params)
      expect(op[:model]).to be_truthy
    end
  end

  describe 'Fail' do
    context 'empty keys' do
      let(:params) { {} }

      it "create new user" do
        op = V1::Users::Registrations::Operation::Create.(params: params)
        expect(op).to be_failure
      end
    end

    context 'different passwords' do
      let(:params) { valid_params.merge(password_confirmation: '') }

      it "create new user" do
        op = V1::Users::Registrations::Operation::Create.(params: params)
        expect(op).to be_failure
      end
    end

    context 'email already exists' do
      let(:existing_user) { create(:user) }
      let(:params) { valid_params.merge(email: existing_user.email) }

      it "create new user" do
        op = V1::Users::Registrations::Operation::Create.(params: params)
        expect(op).to be_failure
      end
    end
  end
end
