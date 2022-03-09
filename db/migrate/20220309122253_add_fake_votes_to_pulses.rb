class AddFakeVotesToPulses < ActiveRecord::Migration[6.1]
  def change
    add_column :pulses, :fake_votes, :integer
  end
end
