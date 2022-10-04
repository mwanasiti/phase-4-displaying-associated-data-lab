class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, except: [:created_at, :updated_at, :user_id], 
        include: {user: {except: [:created_at, :updated_at]}}
    end

end