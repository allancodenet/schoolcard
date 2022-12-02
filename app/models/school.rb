class School < ApplicationRecord
    has_many :students
    has_one_attached :logo



    def logo_resize
        logo.variant(resize_to_limit:[50,50]).processed
      end
end
