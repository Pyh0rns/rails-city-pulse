class CreatePulseCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :pulse_categories do |t|
      t.references :pulse, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
