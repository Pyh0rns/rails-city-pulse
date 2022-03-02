class AddCoordinatesToPulses < ActiveRecord::Migration[6.1]
  def change
    add_column :pulses, :latitude, :float
    add_column :pulses, :longitude, :float
  end
end
