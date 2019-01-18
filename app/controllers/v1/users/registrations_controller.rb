module V1
  module Users
    class RegistrationsController < ApiController
      def create
        # Registration::Create.()
        V1::Users::Registrations::Operation::Create
      end
    end
  end
end
