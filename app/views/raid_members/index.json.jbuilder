json.array!(@raid_members) do |raid_member|
  json.extract! raid_member, :id, :character_name, :realm
  json.url raid_member_url(raid_member, format: :json)
end
