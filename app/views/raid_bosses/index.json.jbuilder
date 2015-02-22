json.array!(@raid_bosses) do |raid_boss|
  json.extract! raid_boss, :id, :name
  json.url raid_boss_url(raid_boss, format: :json)
end
