class Party < ActiveRecord::Base
  has_many :guests
  has_many :meals, through: :guests
  accepts_nested_attributes_for :guests
end
