class Bachelorette < ApplicationRecord
  has_many :contestants
  has_many :outings, through: :contestants

  def average_age_contestants
    contestants.average(:age)
  end

  def hometowns
    contestants.pluck(:hometown).uniq.to_sentence
  end
end
