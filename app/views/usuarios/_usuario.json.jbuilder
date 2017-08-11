json.extract! usuario, :id, :nombre, :ci, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
