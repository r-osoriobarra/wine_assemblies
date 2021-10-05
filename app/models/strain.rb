class Strain < ApplicationRecord
    #wine relationship
    has_many :blends
    has_many :wines, through: :blends, dependent: :destroy

    def to_s
        self.name
    end
end
