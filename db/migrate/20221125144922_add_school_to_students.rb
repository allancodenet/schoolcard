class AddSchoolToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :school,  foreign_key: true
  end
end
