require 'rails_helper'

RSpec.describe V1::Users::Sessions::Operation::Create do
  it "persists valid input" do
    p '=============='
    op = V1::Users::Sessions::Operation::Create.(params: { email: user.email, password: user.password })
    expect(op[:model]).to be_truthy
    expect(op[:model].name).to be_eql("TRB rocks!")
    expect(op[:model]).to be_valid
  end

  # subject(:result) { described_class.call(params: params) }
  #
  # let(:user) { create(:user, verified: :true) }
  # let(:valid_params) { { email: user.email, password: user.password } }
  #
  #
  # describe 'Success' do
  #   let(:params) { valid_params }
  #
  #   it 'creates session' do
  #     expect(result[:errors]).not_to be(nil)
  #     expect(result[:model]).to be_persisted
  #     expect(result[:tokens]).to include(:access)
  #     expect(result).to be_success
  #   end
  # end
  #
  # describe 'Fail' do
  #   context 'invalid credentials' do
  #     let(:params) { valid_params.merge(password: 'password') }
  #     let(:errors) { { unauthorized: { credentials: [I18n.t('errors.invalid_credentials')] } } }
  #
  #     include_examples 'has validation errors'
  #   end
  #
  #   context 'user not verified' do
  #     before { user.toggle!(:verified) }
  #
  #     let(:params) { valid_params }
  #     let(:errors) { { unauthorized: { user_account: 'Account not verified. Please verify your account at first' } } }
  #
  #     include_examples 'has validation errors'
  #   end
  # end
end
