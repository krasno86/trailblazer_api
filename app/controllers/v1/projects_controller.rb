# frozen_string_literal: true

module V1
  class ProjectsController < ApplicationController
    # include Serialize_object
    # before_action :authenticate_user!

    def create
      Project::Create.()
    end
  end
end
