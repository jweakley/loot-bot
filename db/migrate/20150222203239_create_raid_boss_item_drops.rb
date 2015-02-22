class CreateRaidBossItemDrops < ActiveRecord::Migration
  def change
    create_table :raid_boss_item_drops do |t|
      t.integer :blizzard_id
      t.references :raid_boss_kill, index: true

      t.timestamps null: false
    end
    add_foreign_key :raid_boss_item_drops, :raid_boss_kills
  end
end
