json.array!(@raid_boss_item_drops) do |raid_boss_item_drop|
  json.extract! raid_boss_item_drop, :id, :blizzard_id, :raid_boss_kill_id
  json.url raid_boss_item_drop_url(raid_boss_item_drop, format: :json)
end
