class AddColumnToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes,  :img_name, :string, null: false
  end
end
