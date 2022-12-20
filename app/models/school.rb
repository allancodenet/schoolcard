class School < ApplicationRecord
  validate :only_one
  has_many :students
  has_one_attached :logo

  validates_presence_of :name
 



    def logo_resize
        logo.variant(resize_to_limit:[50,50]).processed
      end




  private

  def only_one
    if School.count >= 1
      errors.add :base, 'There can only be one  School per user' 
    end
  end




end
