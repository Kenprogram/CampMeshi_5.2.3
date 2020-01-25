class RenameImageNameColumnToRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :recipes, :img_name, :img_name_recipe
  end
end
