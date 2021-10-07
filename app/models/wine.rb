class Wine < ApplicationRecord
    #blend relationship
    has_many :blends
    has_many :strains, through: :blends, dependent: :destroy

    #evaluation relationship
    has_many :evaluations
    has_many :enologists, through: :evaluations, dependent: :destroy

    #for nestes attributes
    accepts_nested_attributes_for :blends, :evaluations, allow_destroy: true, reject_if: :all_blank
    
    #alphabetic sorted strains
    def sorted_strains
        b_array = Array.new
        self.blends.each {|blend| b_array << "#{blend.strain} (#{blend.percent}%)"}
        sorted_strains = b_array.sort
    end

    #enologist evaluations
    def sorted_scores
        s_array = Array.new
        self.evaluations.each {|evaluation| s_array << "#{evaluation.score} by #{evaluation.enologist}"}
        sorted_scores = s_array.sort
    end
end
