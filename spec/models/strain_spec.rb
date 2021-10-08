
require 'rails_helper'

RSpec.describe Strain, type: :model do
  
  it "name uniqueness" do
    strain1 = Strain.create(name: 'abcd')
    strain2 = Strain.create(name: 'abcd')
    expect(strain2).to_not be_valid
  end

  it "name can't be missed" do
    strain1 = Strain.create(name: nil)
    strain2 = Strain.create(name: " ")

    expect(strain1).to_not be_valid
    expect(strain2).to_not be_valid
  end 

end