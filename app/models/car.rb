class Car < ActiveRecord::Base
validates :make, :model, :year, presence: true

  validates :year, inclusion: 1769..Time.zone.now.year

  validates :price, numericality: {
    greater_than: 0.00,
    less_than: 1_000_000.00
  }
end
