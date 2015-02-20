class CreateEmotionalEvents < ActiveRecord::Migration
  def change
    create_table :emotional_events do |t|
      t.string :title, null: false
      t.text :description
      t.integer :probability, :precision [1..10]
      t.integer :impact, :precision [1..10]
      t.text :effect
      t.text :emotion
      t.boolean :acceptance

      t.timestamps
    end
  end
end
