class Cost < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :category, :amount
end
