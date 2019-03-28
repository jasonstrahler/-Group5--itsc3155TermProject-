class Classroom < ApplicationRecord
    has_many :sections
    has_many :user_infos
    has_many :users, :through => :user_infos
end
