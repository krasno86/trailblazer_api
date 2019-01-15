require 'reform/form/validation/unique_validator'

module V1::Projects::Contract
  class Create < Reform::Form
   property :name

   validates :name, unique: true, presence: true
  end
end
