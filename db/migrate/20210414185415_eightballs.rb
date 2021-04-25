class Eightballs < ActiveRecord::Migration[6.0]
  def change
    create_table :eightballs do |t|
      t.string :name
      t.integer :creator_id
      t.string :pos, array: true
      t.string :neg, array: true
      t.string :vague, array: true
    end
    add_index :eightballs, :pos, using: 'gin'
    add_index :eightballs, :neg, using: 'gin'
    add_index :eightballs, :vague, using: 'gin'
  end
end
