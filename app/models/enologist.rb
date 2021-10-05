class Enologist < ApplicationRecord
    has_many :enologist_magazines
    has_many :magazines, through: :enologist_magazines, dependent: :destroy

    accepts_nested_attributes_for :enologist_magazines, :magazines
end