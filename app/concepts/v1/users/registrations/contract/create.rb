require 'reform/form/validation/unique_validator'

module V1::Users::Registrations::Contract
  class Create < Reform::Form
    property :email
    property :password
    property :password_confirmation

    validates :email, unique: true, presence: true
    validates :password, presence: true, length: { minimum: 6 }
    validate :password_ok?

    def password_ok?
      errors.add(:password_confirmation, "passwords doesn't match") if password != password_confirmation
    end
  end
end
