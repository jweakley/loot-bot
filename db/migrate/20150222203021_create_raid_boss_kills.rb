class CreateRaidBossKills < ActiveRecord::Migration
  def change
    create_table :raid_boss_kills do |t|
      t.references :raid_boss, index: true
      t.references :raid, index: true

      t.timestamps null: false
    end
    add_foreign_key :raid_boss_kills, :raid_bosses
    add_foreign_key :raid_boss_kills, :raids
  end
end
