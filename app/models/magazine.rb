class Magazine < ApplicationRecord
    #enologist relationship 
    has_many :enologist_magazines
    has_many :enologists, through: :enologist_magazines, dependent: :destroy
end
