class Student < ApplicationRecord
  belongs_to :stream
  belongs_to :substream
  has_one_attached :photo

  validates_presence_of :surname, :other_names

  def photo_resize
    photo.variant(resize_to_limit:[100,00]).processed
  end

  def name
    "#{surname}  #{other_names}"
  end

  enum gender:{Male:'Male', Female:'Female'}
  
end
