require 'rails_helper'

RSpec.describe V1::Projects::Operation::Create do
  it "persists valid input" do
    op = V1::Projects::Operation::Create.(params: { name: "TRB rocks!" })
    expect(op[:model]).to be_truthy
    expect(op[:model].name).to be_eql("TRB rocks!")
    expect(op[:model]).to be_valid
  end

  # context 'basic validation presence_of' do
  #   it { expect validate_presence_of(:name) }
  # end
  #
  # describe 'validation' do
  #   # let(:user)            { build(:user) }
  #   let(:projects)         { build(:projects, user: user) }
  #   let(:invalid_project) { build(:projects, name: '') }
  #
  #   it do 'with valid params'
  #     expect(projects).to be_valid
  #   end
  #   it do 'with blank name'
  #     expect(invalid_project).not_to be_valid
  #   end
  # end

  # context "#to_json" do
  #   let(:user)    { create(:user) }
  #   let(:projects) { create(:projects, name: 'bla bla', user: user) }
  #
  #   it "includes name" do
  #     name = %({"name":"bla bla"})
  #     expect(projects.to_json).to be_json_eql(name).excluding("user_id")
  #   end
  #
  #   it "includes the ID" do
  #     expect(projects.to_json).to have_json_path("id")
  #     expect(projects.to_json).to have_json_type(Integer).at_path("id")
  #   end
  # end
end
