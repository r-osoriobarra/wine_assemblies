class Wine < ApplicationRecord
    has_many :blends
    has_many :strains, through: :blends, dependent: :destroy

    accepts_nested_attributes_for :blends, allow_destroy: true, reject_if: :all_blank
end
