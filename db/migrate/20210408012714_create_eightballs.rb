class CreateEightballs < ActiveRecord::Migration[6.0]
  def change
    create_table :eightballs do |t|
      t.string :name
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
      t.string :ans5
      t.string :ans6
      t.string :ans7
      t.string :ans8
      t.string :ans9
      t.string :ans10
      t.string :ans11
      t.string :ans12
      t.string :ans13
      t.string :ans14
      t.string :ans15
      t.string :ans16
      t.string :ans17
      t.string :ans18
      t.string :ans19
      t.string :ans20

      t.timestamps
    end
  end
end
