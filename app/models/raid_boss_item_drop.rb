# == Schema Information
#
# Table name: raid_boss_item_drops
#
#  id                :integer          not null, primary key
#  blizzard_id       :integer
#  raid_boss_kill_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_raid_boss_item_drops_on_raid_boss_kill_id  (raid_boss_kill_id)
#

class RaidBossItemDrop < ActiveRecord::Base
  belongs_to :raid_boss_kill
end
