class AddImagesToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :images, :json
  end
end
