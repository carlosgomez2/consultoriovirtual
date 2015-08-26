class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :Nombre
      t.string :Segundo_Nombre
      t.string :Apellido_Paterno
      t.string :Apellido_Materno
      t.integer :Telefono_principal
      t.integer :Celular
      t.string :Email
      t.string :Ocupacion
      t.date :Fecha_de_Nacimiento
      t.string :Direccion
      t.integer :Codigo_Postal
      t.string :Ciudad
      t.string :Estado

      t.timestamps
    end
  end
end
