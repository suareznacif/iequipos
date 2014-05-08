json.array!(@inventarios) do |inventario|
  json.extract! inventario, :id, :marca, :modelo, :tipo, :costo, :sistema_operativo, :cpu, :ram, :disco_duro, :tarjeta_madre, :monitor, :tipo_conexion, :direccion_mac, :usuario, :area, :estado_general
  json.url inventario_url(inventario, format: :json)
end
