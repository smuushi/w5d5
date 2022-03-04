class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false, index: true
      t.integer :yr, null: false
      t.float :score, null: false
      t.integer :votes, null: false
      t.bigint :director_id, null: false, foreign_key: true, index: true

      t.timestamps default: -> { 'current_timestamp' }
    end
  end
end
