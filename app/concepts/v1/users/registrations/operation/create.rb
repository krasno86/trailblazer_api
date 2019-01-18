module V1::Users::Registrations::Operation
  class Create < Trailblazer::Operation
    step Model(User, :new)
    step Contract::Build(constant: V1::Users::Registrations::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end
