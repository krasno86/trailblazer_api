require 'rails_helper'

RSpec.describe V1::Users::Sessions::Operation::Create do
  let(:user) { create(:user) }
  let(:valid_params) {{ email: user.email, password: user.password }}
  let(:invalid_params) {{ email: user.email, password: 'pass' }}

  describe 'Success' do
    it "creates session" do
      p valid_params
      p invalid_params

      p op = V1::Users::Sessions::Operation::Create.(params: valid_params)

      expect(op[:tokens]).to include(:access)
      expect(op[:model]).to be_persisted
    end
  end

  describe 'Fail' do
    it "creates session"  do
      p op = V1::Users::Sessions::Operation::Create.(params: { email: user.email, password: 'pass' })

      expect(op[:tokens]).to include(:errors)
    end

    # context 'user not verified' do
    #   before { user.toggle!(:verified) }
    #
    #   let(:params) { valid_params }
    #   let(:errors) { { unauthorized: { user_account: [I18n.t('errors.user_not_verified')] } } }
    #
    #   include_examples 'has validation errors'
    # end
  end
end
