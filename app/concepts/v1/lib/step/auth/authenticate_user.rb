module V1::Lib::Step::Auth
  class AuthenticateUser
    def self.call
      user = User.find_by(email: auth_params[:email])
      user.authenticate(auth_params[:password])
    end
  end
end
