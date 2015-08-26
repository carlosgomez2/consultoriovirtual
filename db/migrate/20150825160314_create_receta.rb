class CreateReceta < ActiveRecord::Migration
  def change
    create_table :receta do |t|
      t.text :Receta

      t.timestamps
    end
  end
end
