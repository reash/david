class LocationToReal < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      change_table :ships do |t|
        direction.up {t.change :x_location, :float}
        direction.up {t.change :y_location, :float}
        direction.down {t.change :x_location, :integer}
        direction.down {t.change :y_location, :integer}
      end
    end
  end
end
