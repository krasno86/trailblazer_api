require 'rails_helper'

RSpec.describe V1::Projects::Operation::Create do
  it "persists valid input" do
    op = V1::Projects::Operation::Create.(params: { name: "TRB rocks!" })
    expect(op[:model]).to be_truthy
    expect(op[:model].name).to be_eql("TRB rocks!")
    expect(op[:model]).to be_valid
  end
end
