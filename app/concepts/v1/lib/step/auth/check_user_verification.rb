module V1::Lib::Step::Auth
  class CheckUserVerification

    def self.call(ctx, **)
      ctx[:model].verified?
    end
  end
end
