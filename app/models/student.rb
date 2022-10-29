class Student < ApplicationRecord
  belongs_to :stream
  belongs_to :substream
  has_one_attached :photo

  def photo_resize
    photo.variant(resize_to_limit:[100,00]).processed
  end

  
end
