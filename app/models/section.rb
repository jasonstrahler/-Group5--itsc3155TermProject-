class Section < ApplicationRecord
  belongs_to :classroom
  has_many :students
end
