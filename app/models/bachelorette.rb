class Bachelorette < ApplicationRecord
  has_many :contestants
  has_many :outings, through: :contestants
end
