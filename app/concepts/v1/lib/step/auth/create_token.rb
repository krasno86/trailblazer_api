module V1::Lib::Step::Auth
  class CreateToken

    def self.call(ctx, **)
      user = ctx[:model]
      payload = { user_id: user.id }
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
    end
  end
end
