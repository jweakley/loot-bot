# == Schema Information
#
# Table name: raid_boss_kills
#
#  id           :integer          not null, primary key
#  raid_boss_id :integer
#  raid_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_raid_boss_kills_on_raid_boss_id  (raid_boss_id)
#  index_raid_boss_kills_on_raid_id       (raid_id)
#

class RaidBossKill < ActiveRecord::Base
  belongs_to :raid_boss
  belongs_to :raid
end
