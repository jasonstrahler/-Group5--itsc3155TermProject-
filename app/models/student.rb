class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :section
  belongs_to :user
end
