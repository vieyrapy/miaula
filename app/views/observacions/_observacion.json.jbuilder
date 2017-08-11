json.extract! observacion, :id, :nombreDia, :created_at, :updated_at
json.url observacion_url(observacion, format: :json)
