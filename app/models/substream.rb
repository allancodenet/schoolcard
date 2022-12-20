class Substream < ApplicationRecord
has_many :students
 belongs_to :stream
 validates :name, presence: true, uniqueness: { case_sensitive: false ,scope: :stream_id,
    message: "should happen once per stream" }

end
