class StickiesController < ApplicationController
    def index 
        @stickies = Sticky.all
        render json: @stickies
    end

    def show
        @sticky = Sticky.find(params[:id])
        render json: @sticky 
    end
    def new
        @sticky = Sticky.new
        render json: @sticky
    end
    def create
        @sticky = Sticky.create(sticky_params)
        render json: @sticky
    end
    def edit 
        
        @sticky = Sticky.find(params[:id])
        render json: @sticky
    end
    def update 
        
        @sticky = Sticky.find(params[:id])
        @sticky.update(sticky_params)
        render json: @sticky
    
    end
    def destroy
        
        @sticky = Sticky.find(params[:id])
        @sticky.destroy
        render json: @sticky
    end
         

    private
    def sticky_params
        params.permit(:text, :color)
    end
end
