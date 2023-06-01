json.extract! cuadro, :id, :autor, :fecha, :estilo, :precio, :foto, :created_at, :updated_at
json.url cuadro_url(cuadro, format: :json)
