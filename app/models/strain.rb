class Strain < ApplicationRecord
    #wine relationship
    has_many :blends
    has_many :wines, through: :blends, dependent: :destroy

    #validations
    validates :name, presence: true
    validates :name, uniqueness: true
    

    def to_s
        self.name
    end
end
