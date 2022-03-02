class ChangeProToDefaultFalse < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :pro, from: true, to: false
  end
end
