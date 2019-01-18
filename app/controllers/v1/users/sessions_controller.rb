# class SessionsController < ApplicationController
#
#   skip_before_action :authenticate
#
#   def create
#     # user = User.find_by(email: auth_params[:email])
#     # if user.authenticate(auth_params[:password])
#     #   jwt = Auth.issue({user: user.id})
#     #   render json: {jwt: jwt}
#     # else
#     #   render json: 'unauthorized', status: 422
#     # end
#     V1::Users::Sessions::Operation::Create.()
#     # Session::Create.()
#   end
#
#   private
#
#   def auth_params
#     params.require(:auth).permit(:email, :password)
#   end
# end

module V1
  module Users
    class SessionsController < ApplicationController
      def create
        Sessions::Create.()
        # V1::Users::Sessions::Operation::Create.()
      end

      # def destroy
      #   endpoint V1::Users::Sessions::Operation::Destroy
      # end
    end
  end
end
