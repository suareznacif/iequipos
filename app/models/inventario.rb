class Inventario < ActiveRecord::Base
  validates :marca, :modelo, :tipo, :costo, :sistema_operativo, :cpu, :ram, :disco_duro, :tipo_conexion, :direccion_mac, :length => 1..35
  validates :costo, numericality: true
  validates :usuario, length: {maximum: 40, message: "Maximo %{count} Caracteres"}
  validates :area, length: {minimum: 3, maximum: 20, message: "Debe tener entre 3 y 20 Caracteres" }
  validates :estado_general, length: {minimum: 10, message: "Minimo  %{count} Caracteres"}
end
