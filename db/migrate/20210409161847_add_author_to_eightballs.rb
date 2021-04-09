class AddAuthorToEightballs < ActiveRecord::Migration[6.0]
  def change
    add_column :eightballs, :author, :string
  end
end
