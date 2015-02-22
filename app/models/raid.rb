# == Schema Information
#
# Table name: raids
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Raid < ActiveRecord::Base
end
