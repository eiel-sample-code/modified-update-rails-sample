json.array!(@syohins) do |syohin|
  json.extract! syohin, :id, :kingaku, :record_datetime
  json.url syohin_url(syohin, format: :json)
end
