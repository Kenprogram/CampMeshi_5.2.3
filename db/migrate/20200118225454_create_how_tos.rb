class CreateHowTos < ActiveRecord::Migration[5.2]
  def change
    create_table :how_tos do |t|
      t.string :how_to
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
