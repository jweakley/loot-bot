class CreateRaids < ActiveRecord::Migration
  def change
    create_table :raids do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
