class CooksController < ApplicationController

    def index
        @cooks = Cook.all
    end

    def new
        @cook = Cook.new
    end

    def create
        @cook = Cook.create(cook_params)
        redirect_to cook_path(@cook)
    end

    def show
        @cook = Cook.find(params[:id])
    end

    def edit
        @cook = Cook.find(params[:id])
    end

    def update
        @cook = Cook.find(params[:id])
        @cook.update(cook_params)
        redirect_to cook_path(@cook)
    end

    private
    def cook_params
        params.require(:cook).permit(:name, :age, :specialty)
    end
end
