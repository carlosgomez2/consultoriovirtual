json.array!(@receta) do |recetum|
  json.extract! recetum, :id, :Receta
  json.url recetum_url(recetum, format: :json)
end
