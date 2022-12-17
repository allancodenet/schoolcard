class Student < ApplicationRecord
  before_create :add_default_photo

  belongs_to :school
  belongs_to :stream
  belongs_to :substream
  has_one_attached :photo
  validates_associated :stream, :substream
  validates_presence_of :surname, :other_names, :gender

  def photo_resize
    photo.variant(resize_to_limit:[100,100]).processed
  end

  def name
    "#{surname}  #{other_names}"
  end

 def level
    "#{stream.name}  #{substream.name}"
  end

  
  private 
  def add_default_photo
    unless photo.attached?
      self.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "default.jpg")), filename: 'default.jpg' , content_type: "image/jpg")
    end
  end


  enum gender:{Male:'Male', Female:'Female'} 
  
end
