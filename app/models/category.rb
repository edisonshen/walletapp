class Category < ActiveRecord::Base
 
  has_many :incomes,dependent: :destroy
  has_many :costs,dependent: :destroy
  validates_presence_of :name
end
