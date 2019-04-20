class Section < ApplicationRecord
  belongs_to :classroom
  has_many :students
  
  has_many :assignments
end
