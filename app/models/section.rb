class Section < ApplicationRecord
  belongs_to :classroom
  has_many :user_infos
end
