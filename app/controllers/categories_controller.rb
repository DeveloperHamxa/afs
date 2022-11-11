class CategoriesController < ApplicationController
    before_action :set_category, only: %i[show update destroy]
    def index
        @categories = Category.all
    end
    
end
