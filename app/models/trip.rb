class Trip < ApplicationRecord
  has_many :trails

  def total_distance
    trips.sum(:length)
  end

  def average_distance
    trips.average(:length)
  end

  def longest_distance
    trips.maximum(:length)
  end
end
