class CreateCardSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :card_settings do |t|
      t.string :bg_color, default: "#008080"
      t.string :txt_color, default: "#212121"
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
