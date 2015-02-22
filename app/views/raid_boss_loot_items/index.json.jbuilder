json.array!(@raid_boss_loot_items) do |raid_boss_loot_item|
  json.extract! raid_boss_loot_item, :id, :blizzard_id, :raid_boss_id
  json.url raid_boss_loot_item_url(raid_boss_loot_item, format: :json)
end
