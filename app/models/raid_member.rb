# == Schema Information
#
# Table name: raid_members
#
#  id             :integer          not null, primary key
#  character_name :string
#  realm          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class RaidMember < ActiveRecord::Base
end
