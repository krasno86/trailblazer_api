module V1::Projects::Operation
  class Create < Trailblazer::Operation
    # step Policy::Guard( :authorize! )
    step Model( Project, :new )
    step Contract::Build(constant: V1::Projects::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end
