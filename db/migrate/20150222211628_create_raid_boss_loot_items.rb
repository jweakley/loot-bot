class CreateRaidBossLootItems < ActiveRecord::Migration
  def change
    create_table :raid_boss_loot_items do |t|
      t.integer :blizzard_id
      t.references :raid_boss, index: true

      t.timestamps null: false
    end
    add_foreign_key :raid_boss_loot_items, :raid_bosses
  end
end
