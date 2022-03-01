class AddNicknameGradeXPandProToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :grade, :string
    add_column :users, :xp, :integer
    add_column :users, :pro, :boolean
    add_reference :users, :city, null: false, foreign_key: true
  end
end
