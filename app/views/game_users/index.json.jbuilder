json.array!(@gameusers) do |gameuser|
  json.extract! gameuser, :id
  json.url gameuser_url(gameuser, format: :json)
end
