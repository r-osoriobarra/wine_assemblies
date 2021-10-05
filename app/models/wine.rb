class Wine < ApplicationRecord
    #blend relationship
    has_many :blends
    has_many :strains, through: :blends, dependent: :destroy

    #evaluation relationship
    has_many :evaluations
    has_many :enologists, through: :evaluations, dependent: :destroy

    #for nestes attributes
    accepts_nested_attributes_for :blends, allow_destroy: true, reject_if: :all_blank
    
    def sorted_strains
        b_array = Array.new
        self.blends.each {|blend| b_array << "#{blend.strain} (#{blend.percent}%)"}
        sorted_strains = b_array.sort
    end
end
