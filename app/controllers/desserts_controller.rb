class DessertsController < ApplicationController

    def index
        if params[:user_id]
            render json: User.find(params[:user_id]).desserts.all, status: :ok
        else
            render Dessert.all, statsu: :ok
        end
    end

    def create
        dessert = Dessert.new(permitted_params)
        render json: dessert, status: :ok
    end

    private

    def permitted_params
        params.permit(:name, :description, :type)
    end

end
