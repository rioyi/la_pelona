class Quantity < ApplicationRecord
  belongs_to :sex
  belongs_to :state
  belongs_to :sickness_specific
  belongs_to :period
  belongs_to :age
end
