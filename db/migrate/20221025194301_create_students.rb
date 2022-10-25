class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :surname
      t.string :other_names
      t.string :adm_no
      t.date :dob
      t.integer :index_no
      t.string :upi
      t.integer :kcpe_yr
      t.references :stream, null: false, foreign_key: true
      t.references :substream, null: false, foreign_key: true

      t.timestamps
    end
  end
end
