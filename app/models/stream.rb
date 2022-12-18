class Stream < ApplicationRecord
   
    has_many :students
    has_many :substreams, dependent: :destroy

    
    validates_presence_of :name 
    validates :name, uniqueness: { case_sensitive: false }
   
    private


end
