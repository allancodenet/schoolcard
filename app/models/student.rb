class Student < ApplicationRecord
  belongs_to :stream
  belongs_to :substream
  has_one_attached :photo
end
