class RecipesController < ApplicationController
    def create
        recipe = Recipe.new(recipe_params)

        if recipe.save
            render json: { recipe: recipe }, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        recipe = Recipe.find(params[:id])
    
        if recipe.update(recipe_params)
          render json: { recipe: recipe }, status: :ok
        else
          render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    
    def recipe_params
        params.permit(:title, :ingredients, :instructions, :servings, :user_id)
    end
end
