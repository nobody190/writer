class HomeController < ApplicationController
    def index
        @new_content = Content.new
        @content = Content.last
    end

    def create
        @new_content = Content.new(content_params)
        @new_content.user = current_user
        if @new_content.save
            redirect_to root_path
        else
            render :index
        end
    end

    private
    def content_params
        params.require(:content).permit(:text)
    end
end