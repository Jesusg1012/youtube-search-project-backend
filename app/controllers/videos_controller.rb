class VideosController < ApplicationController
    def index
        @videos=Video.all
        render json: @videos 
    end
    
    def create
        @video=Video.create(video_params)
        render json: @video 
    end

    private
    def video_params
        params.require(:video).permit(:url, :description, :title, :img_url)
    end
end