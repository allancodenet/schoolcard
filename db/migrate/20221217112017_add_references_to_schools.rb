class AddReferencesToSchools < ActiveRecord::Migration[7.0]
  def change
    add_reference :schools, :user,  foreign_key: true
  end
end
