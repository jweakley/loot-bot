class CreateRaidBosses < ActiveRecord::Migration
  def change
    create_table :raid_bosses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
