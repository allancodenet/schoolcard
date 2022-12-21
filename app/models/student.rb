class Student < ApplicationRecord
  belongs_to :school
  belongs_to :stream
  belongs_to :substream
  has_one_attached :photo
  validates_associated :stream, :substream
  validates_presence_of :surname, :other_names, :gender

 

  def name
    "#{surname} #{other_names}"
  end

 def level
    "#{stream.name}  #{substream.name}"
  end


  enum gender:{Male:'Male', Female:'Female'} 
  
end
