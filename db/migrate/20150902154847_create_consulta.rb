class CreateConsulta < ActiveRecord::Migration
  def change
    create_table :consulta do |t|
      t.string :Motivo_Consulta
      t.text :Diagnostico
      t.text :TX
      t.text :Labs
      t.text :Observaciones

      t.timestamps
    end
  end
end
