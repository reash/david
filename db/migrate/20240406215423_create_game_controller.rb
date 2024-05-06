class CreateGameController < ActiveRecord::Migration[7.1]
  def change
    create_table :game_controllers do |t|
      t.integer :go
      t.string :comment
      t.timestamps
    end
  end
end
