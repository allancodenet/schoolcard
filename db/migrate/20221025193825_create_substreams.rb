class CreateSubstreams < ActiveRecord::Migration[7.0]
  def change
    create_table :substreams do |t|
      t.string :name
      t.references :stream, null: false, foreign_key: true

      t.timestamps
    end
  end
end
