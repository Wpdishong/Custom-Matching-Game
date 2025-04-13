class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :score
      t.boolean :completed

      t.timestamps
    end
  end
end
