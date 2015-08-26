json.array!(@registros) do |registro|
  json.extract! registro, :id, :Nombre, :Segundo_Nombre, :Apellido_Paterno, :Apellido_Materno, :Telefono_principal, :Celular, :Email, :Ocupacion, :Fecha_de_Nacimiento, :Direccion, :Codigo_Postal, :Ciudad, :Estado
  json.url registro_url(registro, format: :json)
end
