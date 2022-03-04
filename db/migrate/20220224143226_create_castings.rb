class CreateCastings < ActiveRecord::Migration[7.0]
  def change
    create_table :castings do |t|
      t.bigint :actor_id, null: false, foreign_key: true
      t.bigint :movie_id, null: false, foreign_key: true, index: true
      t.integer :ord, null: false

      t.timestamps default: -> { 'current_timestamp' }
    end
    add_index :castings, %i(actor_id movie_id), unique: true
  end
end
