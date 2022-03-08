class ChangeDefaultForPulse < ActiveRecord::Migration[6.1]
  def change
    change_column_default :pulses, :status, "Votes en cours"
  end
end
