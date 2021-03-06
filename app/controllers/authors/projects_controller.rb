module Authors
    class ProjectsController < AuthorController
        before_action :set_project, only: %i[ show edit update destroy ]
    
#=begin
    
#=end
        # GET /projects or /projects.json
        def index
        @projects = current_author.projects.most_recent
        end
    
        # GET /projects/1 or /projects/1.json
        def show
           # @project = current_author.projects.friendly.find(params[:id])
        end
    
#=begin
        # GET /projects/new
        def new
            @project = current_author.projects.new
        end
    
        # GET /projects/1/edit
        def edit
        end
    
        # POST /projects or /projects.json
        def create
            @project = current_author.projects.new(project_params)
    
        respond_to do |format|
            if @project.save
            format.html { redirect_to authors_project_path(@project), notice: "Project was successfully created." }
            format.json { render :show, status: :created, location: @project }
            else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @project.errors, status: :unprocessable_entity }
            end
        end
        end
    
        # PATCH/PUT /projects/1 or /projects/1.json
        def update
        respond_to do |format|
            if @project.update(project_params)
            format.html { redirect_to authors_project_path(@project), notice: "Project was successfully updated." }
            format.json { render :show, status: :ok, location: @project }
            else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @project.errors, status: :unprocessable_entity }
            end
        end
        end
    
        # DELETE /projects/1 or /projects/1.json
        def destroy
        @project.destroy
    
        respond_to do |format|
            format.html { redirect_to authors_projects_url, notice: "current_author.projects was successfully destroyed." }
            format.json { head :no_content }
        end
        end
    
        private
        # Use callbacks to share common setup or constraints between actions.
        def set_project
            @project = current_author.projects.friendly.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def project_params
            params.require(:project).permit(:title, :body, :description, :banner_image_url)
        end

    end
end