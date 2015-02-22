json.array!(@raids) do |raid|
  json.extract! raid, :id, :name
  json.url raid_url(raid, format: :json)
end
