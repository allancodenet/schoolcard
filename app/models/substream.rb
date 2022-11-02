class Substream < ApplicationRecord
  belongs_to :stream

  validates_presence_of :name

end
