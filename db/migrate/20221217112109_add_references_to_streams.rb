class AddReferencesToStreams < ActiveRecord::Migration[7.0]
  def change
    add_reference :streams, :user,  foreign_key: true
  end
end
