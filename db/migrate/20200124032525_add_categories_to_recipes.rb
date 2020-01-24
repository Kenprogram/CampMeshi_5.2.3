class AddCategoriesToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :category, :integer, null: false, default: 0
  end
end
