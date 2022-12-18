class RemoveUserFromSchools < ActiveRecord::Migration[7.0]
  def change
    remove_reference :schools, :user, null: false, foreign_key: true
  end
end
