require 'spec_helper'

describe Income do
  describe 'validations' do
      subject(:income) { Income.new }
      before { income.valid? }

      [:category_id, :amount].each do |attribute|
        it "should validate presence of #{attribute}" do
          expect(income).to have_at_least(1).error_on(attribute)
          expect(income.errors.messages[attribute]).to include "can't be blank"
        end
      end
    end
  end
end
