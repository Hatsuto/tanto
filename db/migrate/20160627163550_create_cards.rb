class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.text :card_text
      t.integer :victory_points
      t.integer :employ_cost
      t.string :job_title
      t.text :ability
      t.text :special_effect

      t.timestamps null: false
    end
  end
end
