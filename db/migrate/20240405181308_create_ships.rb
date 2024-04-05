class CreateShips < ActiveRecord::Migration[7.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :health
      t.string :comment
      t.integer :x_location
      t.integer :y_location

      t.timestamps
    end
  end
end
