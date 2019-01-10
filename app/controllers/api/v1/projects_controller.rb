# frozen_string_literal: true

module Api::V1
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
      # @project = authorize current_user.projects.new(project_params)
      # if @project.save!
      #   render json: serialized_object(@project), status: 201
      # else
      #   render json: @project.errors.messages, status: 422
      # end
      Project::Create.(params)
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

    private

    def project_params
      params.require(:project).permit(:name)
    end

    def set_project
      @project = authorize Project.find(params[:id])
    end
  end
end
