class Enologist < ApplicationRecord
    #magazine relationship
    has_many :enologist_magazines
    has_many :magazines, through: :enologist_magazines, dependent: :destroy
    
    #evaluation relationship
    has_many :evaluations
    has_many :wines, through: :evaluations, dependent: :destroy

    #for nested attributes
    accepts_nested_attributes_for :enologist_magazines, :evaluations, allow_destroy: true, reject_if: :all_blank
    
    def roles
        role = Array.new
        magazine_roles = Array.new
        self.enologist_magazines.each do |work|
            role << "Editor" if work.editor
            role << "Writer" if work.writer
            role << "Reviewer" if work.reviewer
            magazine_roles << role.join(" / ")
            role.clear
        end
        return magazine_roles
    end
end 