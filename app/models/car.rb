class Car < ApplicationRecord
  include Vehicle

  has_one :wash, as: :washable, dependent: :destroy

  def price
    5
  end
end
