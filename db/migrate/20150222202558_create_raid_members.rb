class CreateRaidMembers < ActiveRecord::Migration
  def change
    create_table :raid_members do |t|
      t.string :character_name
      t.string :realm

      t.timestamps null: false
    end
  end
end
