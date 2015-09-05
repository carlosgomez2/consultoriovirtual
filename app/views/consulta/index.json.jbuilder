json.array!(@consulta) do |consultum|
  json.extract! consultum, :id, :Motivo_Consulta, :Diagnostico, :TX, :Labs, :Observaciones
  json.url consultum_url(consultum, format: :json)
end
