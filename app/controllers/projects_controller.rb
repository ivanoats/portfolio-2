class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project])
		if @project.save
			flash[:notice] = "Project was successfully added"
			redirect_to @project
		else
			flash[:alert] = "Project could not be saved"
			render action: "new"
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_path }
      format.json { head :no_content }
    end
  end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(params[:project])
			redirect_to @project, notice: 'Project was successfully updated.'
		else
			render action: "edit"
		end
	end
end
