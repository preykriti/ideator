class IdeasController < ApplicationController

    def index
        # fetch all of the Idea objects in the database
        # @ideas can be used in views
        @ideas = Idea.all
    end

    def create 
        # @idea = Idea.create(description: params[:idea][:description], author: params[:idea][:author])
        @idea = Idea.create(idea_params)
        redirect_to root_path
    end

    def edit
        @idea = Idea.find(params[:id])
    end

    def update
        @idea = Idea.find(params[:id])
        if @idea.update(idea_params)
            redirect_to root_path
        else
            redirect_to edit_idea_path(params[:id])
        end
    end
        

    # this implements strong parameters which whitelists only certain attributes
    private

    def idea_params
        params.require(:idea).permit(:description, :author)
    end
end
