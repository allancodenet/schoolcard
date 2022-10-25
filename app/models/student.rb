class Student < ApplicationRecord
  belongs_to :stream
  belongs_to :substream
end
