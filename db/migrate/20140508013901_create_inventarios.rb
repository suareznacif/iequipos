class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :marca
      t.string :modelo
      t.string :tipo
      t.float :costo
      t.string :sistema_operativo
      t.string :cpu
      t.string :ram
      t.string :disco_duro
      t.string :tarjeta_madre
      t.string :monitor
      t.string :tipo_conexion
      t.string :direccion_mac
      t.string :usuario
      t.string :area
      t.string :estado_general

      t.timestamps
    end
  end
end
