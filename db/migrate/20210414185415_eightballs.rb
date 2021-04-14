class Eightballs < ActiveRecord::Migration[6.0]
  def change
    create_table :eightballs do |t|
     t.string :name
      t.integer :creator_id
      t.string :pos, array: true
      t.string :neg, array: true
      t.string :vague, array: true 
    end
  end
end
