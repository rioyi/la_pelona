class SicknessSpecific < ApplicationRecord
  belongs_to :sickness_general
  has_many :quantities

end
