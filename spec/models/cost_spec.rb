require 'spec_helper'

describe Cost do
  describe 'validations' do
      subject(:cost) { Cost.new }
      before { cost.valid? }

      [:category_id, :amount].each do |attribute|
        it "should validate presence of #{attribute}" do
          expect(cost).to have_at_least(1).error_on(attribute)
          expect(cost.errors.messages[attribute]).to include "can't be blank"
        end
      end
    end
  end
end
