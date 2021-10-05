class Enologist < ApplicationRecord
    #magazine relationship
    has_many :enologist_magazines
    has_many :magazines, through: :enologist_magazines, dependent: :destroy
    
    #evaluation relationship
    has_many :evaluations
    has_many :wines, through: :evaluations, dependent: :destroy

    #for nested attributes
    accepts_nested_attributes_for :enologist_magazines, :magazines

    #roles per magazine method
    def magazine_roles
        #TODO falta agregar como mostrar los roles por magazine
    end

end 