module V1::Users::Sessions::Operation
  class Create < Trailblazer::Operation

    step V1::Lib::Step::Auth::AuthenticateUser
    fail :invalid_credentials, fail_fast: true

    step V1::Lib::Step::Auth::CreateToken
    step :renderer_options

    def invalid_credentials
      render json: { errors: "Not authenticated" }, status: :unauthorized
    end

    def renderer_options(ctx, tokens:, **)
    end
  end
end
