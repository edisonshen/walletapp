require 'spec_helper'

describe Categories do
  describe 'validation' do 
    subject(:category){Categroies.new}
    before {category.valid?}
    [:name].each do |attribute|
      it "should validate presence of {attribute}" do
        expect(category).to have_at_least(1).error_on(attribute)
        expect(category.errors.messages[attribute]).to include "can't be blank"
      end
    end
  end
end
