class CreatePulses < ActiveRecord::Migration[6.1]
  def change
    create_table :pulses do |t|
      t.string :title
      t.string :solution
      t.string :status
      t.string :photo_url
      t.string :address
      t.string :problem
      t.references :city, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
