class SchoolDetail < ApplicationRecord
    has_one_attached :logo

    def logo_resize
        logo.variant(resize_to_limit:[100,00]).processed
      end
end
