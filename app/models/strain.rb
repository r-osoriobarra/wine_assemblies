class Strain < ApplicationRecord
    has_many :blends
    has_many :wines, through: :blends, dependent: :destroy
end
