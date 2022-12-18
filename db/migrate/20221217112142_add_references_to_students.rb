class AddReferencesToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :user, foreign_key: true
  end
end
