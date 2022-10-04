class UsersController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        render json: user, only: [:id, :username, :city], 
        include: {items: {only: [:id, :name, :description, :price]}}
    end

end