json.array!(@raid_boss_kills) do |raid_boss_kill|
  json.extract! raid_boss_kill, :id, :raid_boss_id, :raid_id
  json.url raid_boss_kill_url(raid_boss_kill, format: :json)
end
