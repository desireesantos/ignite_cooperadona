json.array!(@habilidades) do |habilidade|
  json.extract! habilidade, :id, :pessoa_id, :nome, :nivel
  json.url habilidade_url(habilidade, format: :json)
end
