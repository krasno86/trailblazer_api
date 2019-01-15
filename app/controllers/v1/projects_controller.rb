# frozen_string_literal: true

module V1
  class ProjectsController < ApplicationController
    # include DeviseTokenAuth::Concerns::SetUserByToken
    # include Swagger::Blocks
    # include Serialize_object
    #
    # before_action :authenticate_user!
    # before_action :set_project, only: [:show, :update, :destroy]

    def index
      @projects = current_user.projects.order("created_at DESC")
      render json: ProjectSerializer.new(@projects).serialized_json, status: 200
    end

    def show
      render json: serialized_object(@project), status: 200
    end

    def create
      # @projects = authorize current_user.projects.new(project_params)
      # if @projects.save!
      #   render json: serialized_object(@projects), status: 201
      # else
      #   render json: @projects.errors.messages, status: 422
      # end
      # Project::Create.(params[:projects])
      Project::Create.()
    end

    def update
      if @project.update_attributes(project_params)
        render json: serialized_object(@project)
      else
        render json: @project.errors, status: :unprocessable_entity
      end
    end

    def destroy
      if @project.destroy
        head :no_content, status: :ok
      else
        render json: @project.errors, status: :unprocessable_entity
      end
    end

  end
end
