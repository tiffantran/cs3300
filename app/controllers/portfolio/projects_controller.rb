module Portfolio
    class ProjectsController < PortfolioController
       
        def index
        @projects = Project.most_recent
        end
    
        # GET /projects/1 or /projects/1.json
        def show
            @project = Project.friendly.find(params[:id])
        end
    

    end
end