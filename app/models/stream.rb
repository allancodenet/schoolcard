class Stream < ApplicationRecord
    has_many :students
    has_many :substreams, dependent: :destroy
end
